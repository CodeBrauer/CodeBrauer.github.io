# Archflags for make
export ARCHFLAGS="-arch x86_64"

# make binarys available
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

# set default shell editor
export EDITOR=/usr/bin/nano

alias reload_profile='. ~/.bash_profile'

# remove all DS_Store files recursive in current dir
alias killDS='find . -name *.DS_Store -type f -delete'

alias composer="php /usr/bin/composer.phar"

# better dir listing
alias ll='ls -lhG'
alias la='ls -lahG'

# some quick enchantments
alias grep='grep --color=AUTO'          # make grep colorful
alias mkdir='mkdir -pv'                 # mkdir preferred usage
alias numFiles='echo $(ls -1 | wc -l)'  # count non-hidden files in current dir

# cp and mv are outdated...
alias cp='rsync --progress -ah'
alias mv='rsync --progress -ah --remove-sent-files'

# download medoo without any problems :)
alias medoo="curl -o medoo.min.php http://medoo.in/file/medoo.min"

alias www='cd /Applications/MAMP/htdocs/'   # switch directly to my htdocs

# some network stuff
alias myip='curl ipinfo.io/ip'
alias mylocalip='ifconfig | grep broadcast | grep inet'
alias flushdns='dscacheutil -flushcache'
