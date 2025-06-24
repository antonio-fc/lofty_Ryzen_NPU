import sys
import os
import zipfile
from matplotlib import pyplot as plt

execfile("./tina_setup.py")

def read_npy_data(path):
    baselines = np.load(f"{path}/baselines.npy")
    visibilities = np.load(f"{path}/vis.npy")[0]
    frequency = np.load(f"{path}/freq.npy")
    return (frequency, visibilities, baselines)

def read_csv_inputs(subband_index):
    inputs = f"inputs: {subband_index}"
    print(inputs)

def write_csv_outputs(outputs):
    output = f"outputs: {outputs}"
    print(output)

extract_dir = "unzipped_files"  # or any directory you want to extract to
output = "unzipped_files/inputfiles.zip"

# Unzip the file
with zipfile.ZipFile(output, 'r') as zip_ref:
    zip_ref.extractall(extract_dir)

print(f"Files extracted to: {extract_dir}")


SPEED_OF_LIGHT = 299792458.0

img_pxls = int(sys.argv[1])

npix_l, npix_m = img_pxls, img_pxls
frequency, visibilities, baselines = read_npy_data(path=extract_dir)
visR, visI = np.real(visibilities), np.imag(visibilities)
u, v, w = [baselines[:, :, i] for i in range(3)]
l, m = np.meshgrid(np.linspace(-1, 1, npix_l), np.linspace(1, -1, npix_m))
with np.errstate(all='ignore'):
    n = np.sqrt(1 - l**2 - m**2) - 1
    nan_mask = np.isnan(n)
    n = np.nan_to_num(n) # or else it doesnt work
print("Visibilities")
print("visR:", visR.shape, "visI:",  visI.shape)
print("Baselines")
print("u:", u.shape, "v:", v.shape, "w:", w.shape)
print("Frequency")
print("freq:", frequency.shape, "=", frequency[0])
print("LMN")
print("l:", l.shape, "m:", m.shape, "n:", n.shape)


for i in range(5):
    # Getin inputs
    inputs = read_csv_inputs(i)

    # Format input data
    vis_tensor_imag = torch.from_numpy(np.imag(visibilities)).float()
    vis_tensor_real = torch.from_numpy(np.real(visibilities)).float()
    shape_input = vis_tensor_real.shape
    
    vis_tensor_imag = vis_tensor_imag.view(1, 1, shape_input[0],  shape_input[1])
    vis_tensor_real = vis_tensor_real.view(1, 1, shape_input[0],  shape_input[1])
    vis_tensor_comp = torch.concat((vis_tensor_real, vis_tensor_imag), dim=1)
    # print(vis_tensor_comp.shape)

    # Instantiate the model
    pytorch_model = sky_imager_TINA_comp_final(baselines, frequency, npix_l, npix_m)
    pytorch_model.eval()
    
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
    
    
    # Run with CPU
    model_path = r'./models/lofty.onnx'
    model = onnx.load(model_path)
    input_data = {"input": vis_tensor_comp.numpy()}
    
    # cpu_options = onnxruntime.SessionOptions()
    
    # # Create Inference Session to run the quantized model on the CPU
    # cpu_session = onnxruntime.InferenceSession(
    #     model.SerializeToString(),
    #     providers = ['CPUExecutionProvider'],
    #     sess_options=cpu_options,
    # )
    
    # for input_info in cpu_session.get_inputs():
    #     print(f"Input name: {input_info.name}, shape: {input_info.shape}")
    
    # # Run Inference
    # for _ in range(100):
    #     start = timer()
    #     cpu_results = cpu_session.run(None, input_data)
    #     cpu_total = timer() - start
    
    
    # Run with NPU
    
    # Get the current working directory
    current_directory = os.getcwd()
    directory_path = os.path.join(current_directory,  r'cache\tina_cache')
    cache_directory = os.path.join(current_directory,  r'cache')
    
    # Check if the directory exists and delete it if it does.
    if os.path.exists(directory_path):
        shutil.rmtree(directory_path)
    #     print(f"Directory deleted successfully. Starting Fresh.")
    # else:
    #     print(f"Directory '{directory_path}' does not exist.")
    
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
    # Run Inference
    for _ in range(10):
        start = timer()
        npu_results = aie_session.run(None, input_data)
        npu_total = timer() - start

    write_csv_outputs(i)
    
    # print(f"CPU Execution Time: {cpu_total*1e6}")
    # print(f"NPU Execution Time: {npu_total*1e6}")
    
    # output = np.array(npu_results).reshape(npix_l, npix_m)
    # print("output shape:", output.shape)
    # plt.imshow(output, cmap='hot', interpolation='nearest')
    # plt.show()
print("Done!")


