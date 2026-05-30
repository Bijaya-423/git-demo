#!/bin/bash

set -euo pipefail

if [[ $# -ne 2 ]]; then
        echo "Usage: $0 <source_directory> <backup_destination>"
        exit 1
fi

source_dir=$1
backup_dir=$2

if [[ ! -d "$source_dir" ]] ; then
        echo "Error: Sorce directory '$source_dir' does not exist."
        exit 1
fi

mkdir -p "$backup_dir"


timestamp=$(date +%Y-%m-%d_%H_%M_%S)


backup_file="$backup_dir/backup-$timestamp.tar.gz"

echo "Starting backup..."

tar -czf "$backup_file" "$source_dir"

if [[ -f $backup_file ]]; then
        echo "Backup created successfully."
else
        echo "Backup Failed."
        exit 1
fi


size=$(du -sh "$backup_file" | awk '{print $1}')

echo "Archive Name : $(basename "$backup_file")"
echo "Archive Size : $size"

deleted_count=$(find "$backup_dir" -type f -name "*.tar.gz" -mtime +14 | wc -l)

find "$backup_dir" -type f -name "*.tar.gz" -mtime +14 -delete


echo "Old Backups Deleted : $deleted_count"

echo "Backup Completed Successfully."










