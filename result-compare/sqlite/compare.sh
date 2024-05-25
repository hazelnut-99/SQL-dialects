#!/bin/bash

guest=sqlite
host=postgre

files=$(find . -name "${host}_result_success*")

# Iterate over each file found
for src_file in $files; do
    # Extract the directory path using awk
    dir_path=$(dirname "$src_file")
    dest_file="$dir_path/${guest}_result_success.csv"

    # Check if the destination file exists
    if [ -f "$dest_file" ]; then
        # Calculate MD5 checksums for both files
        md5_guest=$(md5sum "$dest_file" | awk '{ print $1 }')
        md5_host=$(md5sum "$src_file" | awk '{ print $1 }')

        # Compare the checksums
        if [ "$md5_guest" != "$md5_host" ]; then
            echo "$dir_path"
        fi
    fi
done

