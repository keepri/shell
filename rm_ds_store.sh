#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory_path>"
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "Directory not found: $1"
    exit 1
fi

# TODO log each file location deleted
find "$1" -type f -name ".DS_Store" -exec rm -f {} \;
echo ".DS_Store files removed successfully"
