#!/bin/bash

# Find all files and directories in the current directory and its subdirectories
find .

# Find files with a specific name
find /path/to/search -name filename

# Find files modified within the last N days
find /path/to/search -mtime -N

# Find files of a specific type (e.g., text files) [f to show only files and not directories]
find /path/to/search -type f -name "*.txt"

# Find directories only
find /path/to/search -type d

# ------- search for file content -------

# Search for a specific pattern in a file
# This is a  case-sensitive search
grep "pattern" filename

# Recursively search for a pattern in files in a directory
grep -r "pattern" /path/to/search

# Search for a pattern case-insensitively
grep -i "pattern" filename

# Show line numbers along with matching lines
grep -n "pattern" filename

# ------- find files by size -------

# Find files larger than a specific size
find /path/to/search -size +10Mls


# Display disk usage of files and directories
du -h /path/to/search

# ------- list by pattern matching -------

# Find files with a specific extension
ls *.txt

# Find files starting with a specific prefix
ls prefix*
