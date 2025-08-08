#!/bin/bash

# Folder to backup - change this path as needed
SOURCE_DIR="./my_folder"

# Backup destination folder
BACKUP_DIR="./backup"

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Archive filename with date
DATE=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_FILE="$BACKUP_DIR/backup_$DATE.tar.gz"

# Create the archive
tar -czf "$BACKUP_FILE" -C "$SOURCE_DIR" .

echo "Backup created: $BACKUP_FILE"
