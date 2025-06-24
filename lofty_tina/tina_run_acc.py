import sys
import os
import zipfile
from matplotlib import pyplot as plt
import csv
from torchviz import make_dot
import torchvision
from torchview import draw_graph

execfile("tina_setup.py")

def read_npy_data(path):
    baselines = np.load(f"{path}/baselines.npy")
    visibilities = np.load(f"{path}/vis.npy")[0]
    frequency = np.load(f"{path}/freq.npy")
    return (frequency, visibilities, baselines)

def write_csv_outputs(outputs):
    output = f"outputs: {outputs}"
    # print(output)

extract_dir = "unzipped_files"  # or any directory you want to extract to
output = "unzipped_files/inputfiles.zip"

# Unzip the file
# with zipfile.ZipFile(output, 'r') as zip_ref:
#     zip_ref.extractall(extract_dir)

# # print(f"Files extracted to: {extract_dir}")

# frequency, visibilities, baselines = read_npy_data(path=extract_dir)
# visR, visI = np.real(visibilities), np.imag(visibilities)
# u, v, w = [baselines[:, :, i] for i in range(3)]

# extract csv input
frequencies = read_single_column_csv('csv_inputs/frequencies.csv')
baselines = read_multi_column_csv2('csv_inputs/baselines.csv')
visR_All = read_multi_column_csv('csv_inputs/visibilitiesReal.csv')
visI_All = read_multi_column_csv('csv_inputs/visibilitiesImag.csv')

# format input
SPEED_OF_LIGHT = 299792458.0
img_pxls = int(sys.argv[1])
npix_l, npix_m = img_pxls, img_pxls
l, m = np.meshgrid(np.linspace(-1, 1, npix_l), np.linspace(1, -1, npix_m))
with np.errstate(all='ignore'):
    n = np.sqrt(1 - l**2 - m**2) - 1
    nan_mask = np.isnan(n)
    n = np.nan_to_num(n) # or else it doesnt work
# print("Baselines")
u, v, w = [baselines[:, :, i] for i in range(3)]

freq_index = int(sys.argv[2])
# Getin inputs
visR = visR_All[freq_index]
visI = visI_All[freq_index]
frequency = frequencies[freq_index]
# print("Frequency")
# print("freq:", frequency.shape, "=", frequency)
# print("Visibilities")
# print("visR:", visR.shape, "visI:",  visI.shape)

ref = all_sky_image(combine_to_complex(visR, visI), u, v, w, frequency, l, m, n, npix_l, npix_m)

# Instantiate the model
pytorch_model = sky_imager_TINA_comp_final(baselines, frequency, npix_l, npix_m)
pytorch_model.eval()

# model_graph = draw_graph(pytorch_model, input_size=(1, 2, 96, 96), expand_nested=True)
# model_graph.visual_graph

x = torch.randn(1, 2, 96, 96)
y = pytorch_model(x)

dot = make_dot(y, params=dict(pytorch_model.named_parameters()))
dot.save('model_graph.dot')
sys.exit()
# Export ONNX
input1 = torch.randn(1, 2, 96, 96)
inputs = {"x": input1}
dynamic_axes = {"input": {0: "batch_size"}, "output": {0: "batch_size"}}
model_path = "models/lofty.onnx"
torch.onnx.export(
        pytorch_model,
        inputs,
        model_path,
        export_params=True,
        opset_version=17,  # Recommended opset
        input_names=['input'],
        output_names=['output'],
        dynamic_axes=dynamic_axes,    
    )

# Quantize Model
# quant_config = get_default_config("BF16")
# quant_config.extra_options["BF16QDQToCast"] = True
# quant_model_path = "models/lofty_quantized.onnx"
# config = Config(global_quant_config=quant_config)
# print("The configuration of the quantization is {}".format(config))
# quantizer = ModelQuantizer(config)
# quant_model = quantizer.quantize_model(model_input = model_path,
#                                        model_output = quant_model_path,
#                                        calibration_data_path = None)

# Run with NPU
model_path = r'./models/lofty.onnx'
model = onnx.load(model_path)   

current_directory = os.getcwd()
directory_path = os.path.join(current_directory,  r'cache\tina_cache')
cache_directory = os.path.join(current_directory,  r'cache')

# Check if the directory exists and delete it if it does.
if os.path.exists(directory_path):
    shutil.rmtree(directory_path)

# Compile
install_dir = os.environ['RYZEN_AI_INSTALLATION_PATH']
config_file_path = os.path.join(install_dir, 'voe-4.0-win_amd64', 'vaip_config.json') # Path to the NPU config file

aie_options = onnxruntime.SessionOptions()

aie_session = onnxruntime.InferenceSession(
    model.SerializeToString(),
    providers=['VitisAIExecutionProvider'],
    sess_options=aie_options,
    provider_options = [{'config_file': config_file_path,
                         'cacheDir': cache_directory,
                         'cacheKey': 'tina_cache'}]
)

# Format input data
vis_tensor_imag = torch.from_numpy(visI).float()
vis_tensor_real = torch.from_numpy(visR).float()
shape_input = vis_tensor_real.shape

vis_tensor_imag = vis_tensor_imag.view(1, 1, shape_input[0],  shape_input[1])
vis_tensor_real = vis_tensor_real.view(1, 1, shape_input[0],  shape_input[1])
vis_tensor_comp = torch.concat((vis_tensor_real, vis_tensor_imag), dim=1)
# # print(vis_tensor_comp.shape)

# Run Inference
input_data = {"input": vis_tensor_comp.numpy()} 
for _ in range(10):
    start = timer()
    npu_results = aie_session.run(None, input_data)
    npu_total = timer() - start

output = np.array(npu_results).reshape(npix_l, npix_m)/9216
output = np.flip(output, axis=0)
output = np.flip(output, axis=1)

valid_mask = ~np.isnan(output)
valid_output = output[valid_mask]
valid_ref = ref[valid_mask]

diff = abs(valid_output-valid_ref)*100/valid_ref

diff_min = np.min(diff)
diff_max = np.max(diff)
diff_mean = np.mean(diff)

# # print(f"CPU Execution Time: {cpu_total*1e6}")
# # print(f"NPU Execution Time: {npu_total*1e6}")


# print("output shape:", output.shape)
# plt.imshow(output, cmap='hot', interpolation='nearest')
# plt.show()

# plt.imshow(ref, cmap='hot', interpolation='nearest')
# plt.show()
# out = f"frequency (Hz);diff_mean;diff_min;diff_max"
out = f"{frequency};{diff_mean};{diff_min};{diff_max}"
def write_string_to_csv(filename, string_data):
    with open(filename, mode='a', newline='') as file:
        writer = csv.writer(file)
        writer.writerow([string_data]) 
write_string_to_csv("acc_results/acc3_64.csv", out)
