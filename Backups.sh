#!/bin/bash

<<info
This shell scripting will take periodic backup

eg.
./backup.sh <source> <dest>
src /home/ubuntu/scripts
dest /home/ubuntu/Backups
info

echo "Backup Started"

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%M')

zip -r "$dest/Backup-$timestamp.zip" $src > /dev/null

echo "Backup Completed"
