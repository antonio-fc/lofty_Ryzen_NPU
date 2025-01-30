import numpy as np

def write_txt(file_name, array):
    with open(f'luts/{file_name}.txt', 'w') as file:
        l1 = "Welcome to TutorialsPoint\n"
        l2 = "Write multiple lines \n"
        l3 = "Done successfully\n"
        l4 = "Thank You!"
        file.writelines([l1, l2, l3, l4])
        file.close()


def main():
    
    write_txt("cos")


if __name__ == "__main__":
    main()