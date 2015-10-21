#!/bin/bash

# v0.1
# todo: make runnable with argv

clear
echo -ne "\n\n"
echo "This action will take some time!"
echo -ne "\n\n"
 
sleep 1
 
cat part_* > big_fat_file.zip # < edit extension if needed
 
# if the file is not a zip comment this out with '#'
 
unzip big_fat_file.zip
rm big_fat_file.zip
 
clear
echo -ne "\n\n"
echo " == Yay - now can access your files! =="
echo -ne "\n\n"
