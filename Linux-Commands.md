---
title: Linux Commands
description: 
published: true
date: 2021-02-27T03:57:38.588Z
tags: 
editor: markdown
dateCreated: 2021-02-27T03:39:50.359Z
---

# Data management commands:

List folder size : du -h --max-depth=1

Get all extensions and their respective file count in a directory : find ./ -type f | grep -E ".*\.[a-zA-Z0-9]*$" | sed -e 's/.*\(\.[a-zA-Z0-9]*\)$/\1/' | sort | uniq -c | sort -n

Delete all file of a type : find -type f -name "*.[FILETYPE]" -delete

Clean Music collection : find -type f -name "*.mp3" -delete && find -type f -name "*.jpg" -delete && find -type f -name "*.png" -delete && find -type f -name "*.jpeg" -delete && find -type f -name "*.MP3" -delete && find -type f -name "*.JPG" -delete && find -type f -name "*.PNG" -delete && find -type f -name "*.JPEG" -delete && find -empty -type f -delete && find -empty -type d -delete

Delete empty directories :
find -empty -type d -delete

Count empty directories :
find -empty -type d | wc -l

Create a folder to each files :
for %i in (*) do md "%~ni"
for %i in (*) do move "%i" "%~ni"
pause


Move every .ext to the current folder:
find -type f -name "*.ext" -exec mv {}. \;

# Tar :

Pack :
tar -cfv [FILENAME].tar [SOURCE]

Unpack :
tar -xfv [FILENAME].tar

View :
tar -tfv [FILENAME].tar

# Others:

Create SymLink : ln -s [Source] [Name]

Vim Remove Comments : :g!/^[^#]/d

View used port : netstat -npl 

List packages not installed with pacman : pacman -Qm

Rclone :

rclone move --verbose --transfers 2 [SOURCES] [DEST]
rclone copy --verbose --transfers 2 [SOURCES] [DEST]
#rclone move --verbose --transfers 2  '/path/to/source/' 'Backups:Dest/'
