

#!/bin/bash

# Find all files with the name "sqlite_result_success*"
files=$(find . -name "duck_result_success*")

# Iterate over each file found
for src_file in $files; do
    # Extract the directory path using awk
    dir_path=$(echo "$src_file" | awk -F'/duck_result_success.csv' '{print $1}')
    dest_file="$dir_path/postgre_result_success.csv"

    # Check if the destination file exists
    if [ -f "$dest_file" ]; then
        # Calculate MD5 checksums for both files
        md5_sqlite=$(md5sum "$src_file" | awk '{ print $1 }')
        md5_postgre=$(md5sum "$dest_file" | awk '{ print $1 }')

        # Compare the checksums
        if [ "$md5_sqlite" != "$md5_postgre" ]; then
            echo "$dir_path"
        fi
    fi
done

