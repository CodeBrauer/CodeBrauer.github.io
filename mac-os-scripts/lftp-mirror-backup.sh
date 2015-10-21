#!/bin/bash


echo 'LFTP Sync started.';

# Connection settings
FTP_HOST="192.168.100.210"
FTP_LOGIN="my_user"
FTP_PASSWORD="my_super_secret_password"

# Paths
REMOTE_DIR="/public_html/example.org/"
LOCAL_DIR="/Volumes/Backup/example.org/"

# REGEX - only specified files for sync
# doesn't support pipes for "OR" - so you need to use multiple ignores (http://regexr.com/3ahoq)
# -> commented out use it if you want only sync specific file types...
# TIFF_FILES="\.([Tt][Ii][Ff]([Ff])?)$"
# JPG_FILES="\.([Jj][Pp]([Ee])?[Gg])$"
# PNG_FILES="\.([Pp][Nn][Gg])$"

DATE_TODAY=$(date +"%Y-%m-%d")

# lftp mirror script

lftp -u $FTP_LOGIN,$FTP_PASSWORD $FTP_HOST << EOF
    set ftp:ssl-allow no
        mirror -ne \
            #-i $TIFF_FILES \
            #-i $JPG_FILES \
            #-i $PNG_FILES \
            --log=logs/LFTP/$DATE_TODAY.log \
            $REMOTE_DIR $LOCAL_DIR
    quit
EOF

echo 'LFTP Sync finished.';
