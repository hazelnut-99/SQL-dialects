import os
import shutil

# Change this to your main directory path
main_dir = '~/home/hongshuyan01/SQL-dialects/test-suite-generated/ClickHouse/test_collection_00000'

# Maximum number of subdirectories per new directory
max_subdirs_per_dir = 1000

# Get the parent directory of the main directory
parent_dir = os.path.dirname(main_dir)

# Create a list of all subdirectories in the main directory
subdirs = [d for d in os.listdir(main_dir) if os.path.isdir(os.path.join(main_dir, d))]

# Initialize counters
subdir_index = 0
batch_index = 0

# Create new directories and move subdirectories
while subdir_index < len(subdirs):
    # Create new batch directory name
    new_dir_name = f"{main_dir}_{batch_index}"
    new_dir_path = os.path.join(parent_dir, new_dir_name)
    
    # Create the new batch directory
    os.makedirs(new_dir_path, exist_ok=True)
    
    # Move up to `max_subdirs_per_dir` subdirectories to the new batch directory
    for _ in range(max_subdirs_per_dir):
        if subdir_index >= len(subdirs):
            break
        subdir_to_move = subdirs[subdir_index]
        shutil.move(os.path.join(main_dir, subdir_to_move), os.path.join(new_dir_path, subdir_to_move))
        subdir_index += 1
    
    # Increment batch index for the next batch directory
    batch_index += 1

print("Directories split successfully.")

