#!/bin/bash 
source_dir="/home/tushar/projects" 
backup_dir="/home/tushar/backups" 
timestamp=$(date +%Y%m%d_%H%M%S) 
backup_file="$backup_dir/backup_$timestamp.tar.gz"
tar -czf $backup_file $source_dir
echo "Backup completed: $backup_file"
