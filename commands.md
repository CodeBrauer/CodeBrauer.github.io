### find all files with non-ascii chars:
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

