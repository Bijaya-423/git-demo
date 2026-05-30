#!/bin/bash

log_dir=$1
set -euo pipefail

if [[ $# -ne 1 ]]; then
        echo "Usage: $0 <log_directory.>"
        exit 1
fi


if [[ ! -d $log_dir  ]]; then
        echo "Directory $log_dir does not exists!"
        exit 1
#else
        #echo "Directory exists."
fi

echo "Starting log rotation..."

compressed_count=0

while IFS= read -r file
do
    sudo gzip "$file"
    ((compressed_count++))
done < <(
    #find "$log_dir" -type f -name "*.log" -mtime +7
        find "$log_dir" -type f -name "*.log" -mmin +5
)



deleted_count=0

while IFS= read -r file
do
        sudo rm -f "$file"

        ((deleted_count++))

done < <(
        #find "$log_dir" -type f -name "*.gz" -mtime +30
        find "$log_dir" -type f -name "*.gz" -mmin +2
)



echo "Compressing files..."
find "$log_dir" -type f -name "*.log" -mmin +5

echo "Deleting files..."
find "$log_dir" -type f -name "*.gz" -mmin +2
echo "-------------------------------------"
echo "Compressed Files : $compressed_count"
echo "Deleted Files    : $deleted_count"
echo "Log Rotation completed."
