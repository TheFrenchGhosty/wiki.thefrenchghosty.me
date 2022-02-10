# Data management commands

List folder size : 
```
du -h --max-depth=1
```

Get all extensions and their respective file count in a directory : 
```
find ./ -type f | grep -E ".*\.[a-zA-Z0-9]*$" | sed -e 's/.*\(\.[a-zA-Z0-9]*\)$/\1/' | sort | uniq -c | sort -n
```

Delete all file of a type : 
```
find -type f -name "*.[FILETYPE]" -delete
```

Clean Music collection : 
```
find -type f -name "*.mp3" -delete && find -type f -name "*.jpg" -delete && find -type f -name "*.png" -delete && find -type f -name "*.jpeg" -delete && find -type f -name "*.MP3" -delete && find -type f -name "*.JPG" -delete && find -type f -name "*.PNG" -delete && find -type f -name "*.JPEG" -delete && find -empty -type f -delete && find -empty -type d -delete
```

Delete empty directories :
```
find -empty -type d -delete
```

Count empty directories :
```
find -empty -type d | wc -l
```

Create a folder to each files :
```
for %i in (*) do md "%~ni"
for %i in (*) do move "%i" "%~ni"
pause
```

Move every .ext to the current folder:
```
find -type f -name "*.ext" -exec mv {} . \;
```

Unrar recurcively (Source: https://unix.stackexchange.com/a/97203):
```
find . -name '*.rar' -execdir unrar e '{}' +
```

Unzip recurcively (Source: https://unix.stackexchange.com/a/97203):
```
find . -name '*.zip' -execdir unzip -tq '{}' +
```

Rename a file the same as its containing folder (Source: https://askubuntu.com/questions/901141/can-i-rename-files-within-a-folder-with-the-name-of-the-parent-folder )
```
find -type f -exec bash -c 'fp=$(dirname "$1");fn=$(basename "$fp");px="${1##*.}";mv "$1" "$fp"/"$fn"."$px"' sh "{}" \;
```

Merge 2 folders and rename the duplicates (Source: https://www.linuxquestions.org/questions/showthread.php?p=6257365#post6257365):
```
cp --backup=numbered /source/* /destination/
```


# Tar

Pack :
```
tar -cfv [FILENAME].tar [SOURCE]
```

Unpack :
```
tar -xfv [FILENAME].tar
```

View :
```
tar -tfv [FILENAME].tar
```

# Vim

Insert text at the begining of every line (Source: https://techglimpse.com/insert-text-beginning-line-vim/ )
```
:%s/^/[REPLACEME]/
```

Delete all lines containing `[REPLACEME]` (Source: https://stackoverflow.com/questions/46781951/efficient-way-to-delete-line-containing-certain-text-in-vim-with-prompt )

```
:g/[REPLACEME]/d
```

Sort lines alphabetically (Source: https://thoughtbot.com/blog/sort-lines-alphabetically-in-vim )

```
:sort
```

# Others

Create SymLink : 
```
ln -s [Source] [Name]
```

Vim Remove Comments : 
```
:g!/^[^#]/d
```

View used port : 
```
netstat -npl
```

List packages not installed with pacman : 
```
pacman -Qm
```

Rclone :
```
rclone move --verbose --transfers 2 [SOURCES] [DEST]
```
```
rclone copy --verbose --transfers 2 [SOURCES] [DEST]
```
```
rclone move --verbose --transfers 2  '/path/to/source/' 'Backups:Dest/'
```
