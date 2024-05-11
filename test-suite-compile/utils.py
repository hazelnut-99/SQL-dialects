import os 


def list_files_under_directory(directory):
    paths = []
    for root, dirs, files in os.walk(directory):
        for file in files:
            paths.append(os.path.join(root, file))
    return paths


def read_file_content(file_path):
    try:
        with open(file_path, 'r') as file:
            content = file.read()
            return content
    except FileNotFoundError:
        print(f"Error: The file '{file_path}' does not exist.")
        return None


def create_directory_if_not_exists(directory):
    # Check if the directory doesn't exist
    if not os.path.exists(directory):
        # Create the directory
        os.makedirs(directory)
    else:
        print(f"Directory '{directory}' already exists.")


def zfill_number(number, digits):
    formatted_number = str(number).zfill(digits)
    return formatted_number


def write_list_to_file(items, file_path):
    with open(file_path, 'w') as file:
        file.writelines(f"{item}\n" for item in items)