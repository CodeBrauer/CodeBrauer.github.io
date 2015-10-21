#!/bin/bash

# v0.1
# todo: turn script into command (argv etc..)
 
# just edit the path and the file and run it.
 
FATFILE="/path/to/big_fat_file.zip"
SAVEPATH="path/to/save/split/files/part_" # notice the end is '/part_'
 
# e.g. 3221225472 byte = 3GiB // good for FAT32 usage... (main reason to split files..)
SPLITSIZE="3221225472"
 
split -b $SPLITSIZE $FATFILE $SAVEPATH
