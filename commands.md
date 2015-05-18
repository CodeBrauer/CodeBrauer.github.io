# Linux

## du

### find top 10 biggest files in current path 
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
