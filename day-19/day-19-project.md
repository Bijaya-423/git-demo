### Task 1: Log Rotation Script


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




### Task 2: Server Backup Script
### Task 2: Server Backup Script
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
