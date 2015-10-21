#!/bin/bash

# super simple mysql backup script with mysqldump
# creates a sql.gz file from all databases that the user has access to.

cd /_my_backups
 
HOST="1.2.3.4"
USER="my_backup_user"
PASS="**************"
 
DATE_TODAY=$(date +"%Y-%m-%d")
 
# dump it
mysqldump -h $HOST -u $USER -p$PASS --all-databases > db_$DATE_TODAY.sql
 
# compress with highest compression!
gzip -9 -f db_$DATE_TODAY.sql
