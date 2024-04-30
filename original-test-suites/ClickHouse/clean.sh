
directory=0_stateless
sh_files=$(find "$directory" -type f \( -name "*.sh" -o -name "*.bash" \))
python_files=$(find "$directory" -type f -name "*.py" -o -name "*.python")
expect_files=$(find "$directory" -type f \( -name "*.expect" -o -name "*.bash" \))

for file in $sh_files; do
    filename=$(basename "$file")
    echo "$filename"
    filename_without_extension="${filename%.sh}"
    files_to_remove=$(find "$directory" -type f -name "$filename_without_extension*")
    for file in $files_to_remove; do
	    echo "Removing file: $file"
	    rm "$file"
	done
done

for file in $python_files; do
    filename=$(basename "$file")
    echo "$filename"
    filename_without_extension="${filename%.py}"
    files_to_remove=$(find "$directory" -type f -name "$filename_without_extension*")
    for file in $files_to_remove; do
	    echo "Removing file: $file"
	    rm "$file"
	done
done

for file in $expect_files; do
    filename=$(basename "$file")
    echo "$filename"
    filename_without_extension="${filename%.expect}"
    files_to_remove=$(find "$directory" -type f -name "$filename_without_extension*")
    for file in $files_to_remove; do
	    echo "Removing file: $file"
	    rm "$file"
	done
done