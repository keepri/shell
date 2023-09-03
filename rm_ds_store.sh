#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory_path>"
    exit 1
fi

if [ -d "$1" ]; then
    find "$1" -type f -name ".DS_Store" -exec rm -f {} \;
    echo ".DS_Store files removed successfully"
else
    echo "Directory not found: $1"
fi
