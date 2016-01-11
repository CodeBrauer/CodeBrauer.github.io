# Path to your oh-my-zsh installation.
export ZSH=/Users/gab/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

HIST_STAMPS="dd.mm.yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration
export PATH="/Users/gab/.composer/vendor/bin:/Users/gab/bin:/usr/local/sbin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# make binarys available
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/Users/gab/bin:$PATH
export PATH=/Users/gab/.composer/vendor/bin:$PATH

# set default shell editor
#export EDITOR=/usr/bin/nano

export CLICOLORS=1
#export HOMEBREW_GITHUB_API_TOKEN=XXXXX

alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

export EDITOR='subl -w'

alias reload_profile='source ~/.zshrc'

# remove all DS_Store files recursive in current dir
alias killDS='find . -name *.DS_Store -type f -delete'

alias composer="php /usr/local/bin/composer"

# better dir listing
alias ll='ls -lhG'
alias la='ls -lahG'

# some quick enchantments
alias grep='grep --color=AUTO'          # make grep colorful
alias mkdir='mkdir -pv'                 # mkdir preferred usage
alias numFiles='echo $(ls -1 | wc -l)'  # count non-hidden files in current dir

# cp and mv are outdated...
alias cp='rsync --progress -ah'
alias rename='/bin/mv'
alias mv='rsync --progress -ah --remove-sent-files'

alias www='cd /Applications/MAMP/htdocs/'   # switch directly to my htdocs

# some network stuff
alias myip='curl ipinfo.io/ip'
alias mylocalip='ifconfig | grep broadcast | grep inet'
alias flushdns='dscacheutil -flushcache'

alias filetree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'" 
pkill "AAM Updates Notifier"

alias php-version="brew-php-switcher "

# functions

getpw () {
    printf $(security find-internet-password -a $1 -w) | pbcopy
}

zipf () {
    zip -r "$1".zip "$1" ;
}
