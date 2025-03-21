#!/bin/bash

<<note
This is script to take backup 
note

time="$(date '+%Y-%m-%d_%H-%M-%S')"

backupdir="${time}-backup.zip"

zip -r $backupdir $1

echo "Backup complete"
