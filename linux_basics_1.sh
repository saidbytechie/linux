#!/bin/bash

# to know the present working directory
pwd

# navigate to a specific folder
cd /folder/path

# navigate to the parent folder
cd ..

# List all contents of the directory
ls -l

# list all the sub directories recursively
ls -r

# Create a New Directory
mkdir new_folder

# Copy a Directory
cp -r /path/to/source_directory /path/to/destination_directory

# create a file
touch file_name

# edit a file; This will also create a file if it doesn't exist
nano file_name

# display the contents of file
cat file_name

# Move/Rename a Directory
mv old_folder new_folder

# Remove/Delete a Directory
rm -r unwanted_folder