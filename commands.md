# Linux

## du

### find top 10 biggest folders in root path 
```
du -k / 2>/dev/null | sort -n | tail -10
```

### find top 10 biggest files in current path 
```
du -hsx * | sort -rh | head -10
```

## find

### find all files with non-ascii chars in filename:
```
find ./ -type f | grep --color='auto' -P "[\x80-\xFF]"
```

### exclude hidden files from find
```
find ./ -not -path '*/\.*' 
```

### find all file extensions grouped and sorted
```
find ./ -type f | grep -E ".*\.[a-zA-Z0-9]*$" | sed -e 's/.*\(\.[a-zA-Z0-9]*\)$/\1/' | sort | uniq -c | sort -n
```
### Recursively count all the files in a directory
```
find . -type f | wc -l
```

## mysqldump

### simple backup
```
mysqldump -u root -p {databasename} > backup.sql
```

### all databases
```
mysqldump -u root -p --all-databases --skip-lock-tables > alldb.sql
```

## compression

### tar
```
tar -zcvf {.tgz-file} {files}   # compress gzip
tar -jcvf {.tbz2-file} {files}  # compress bzip2

tar -zxvf {.tgz-file}  # uncompress gzip
tar -jxvf {.tbz2-file} # uncompress bzip2

tar -ztvf {.tar.gz}    # list files of gzip
tar -jtvf {.tbz2}      # list files of bzip2
```

### gzip
```
gzip -9 {files} # high compression
gzip -l {.gz file} # list files
gzip -d {.gz file} # uncompress
```

### zip
```
zip {.zip-filname} {files}  # high compression
unzip -l {.zip file}        # list files
unzip {.zip file}           # uncompress
```

## netstat

### show used ports by processname
```
# run as root!
netstat -tulpen | grep {processname}
```

### show possible DDoS IPs (counts request of single ips)
```
netstat -ntu | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -n
```
