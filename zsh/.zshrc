if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Prezto
# ------

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi



export DEFAULT_USER=$USER
export XML_CATALOG_FILES="/usr/local/etc/xml/catalog"


# Theme
# -----
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.

POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"
POWERLEVEL9K_TIME_ICON=""
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_SWAP_ICON=""
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time root_indicator virtualenv swap time)
POWERLEVEL9K_DISABLE_RPROMPT=false
POWERLEVEL9K_RAM_ELEMENTS=(ram_free)

ZSH_THEME=powerlevel10k/powerlevel10k
source ~/powerlevel10k/powerlevel10k.zsh-theme


# Path
# ----

export PATH="/usr/local/bin:/usr/local/opt/coreutils/bin:/usr/local/opt/gnu-tar/bin:/usr/local/opt/gnu-which/bin:/usr/local/sbin:/usr/local/MacGPG2/bin:/opt/X11/bin:/usr/bin:/usr/sbin:/bin:/sbin"
export PYTHONPATH="~/.pyenv/shims/python3"

# Manpath
# -------

export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"



# -- MAKE PATH -- 
# PATH="/usr/local/opt/make/libexec/gnubin:$PATH"

# -- WHICH PATH -- 
#PATH="/usr/local/opt/gnu-which/libexec/gnubin:$PATH"

# -- GREP PATH --
# PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"

# -- GNU TIME PATH -- 
#PATH="/usr/local/opt/gnu-time/libexec/gnubin:$PATH"


# cURL
# ----
 
#export PATH="/usr/local/opt/curl/bin:$PATH"
#export LDFLAGS="-L/usr/local/opt/curl/lib"
#export CPPFLAGS="-I/usr/local/opt/curl/include"
#export PKG_CONFIG_PATH="/usr/local/opt/curl/lib/pkgconfig"


# MozJPEG
# -------

#export PATH="/usr/local/opt/mozjpeg/bin:$PATH"
#export LDFLAGS="-L/usr/local/opt/mozjpeg/lib"
#export CPPFLAGS="-I/usr/local/opt/mozjpeg/include"
#export PKG_CONFIG_PATH="/usr/local/opt/mozjpeg/lib/pkgconfig"


# Aliases
# -------
 
alias clr="clear"
# alias myip="curl icanhazip.com"
alias ll="ls -al"
alias o="open"
alias ut="uptime"
alias wget="wget -c"
alias reloadbash="source ~/.bash_profile"
alias reloadzsh="source ~/.zshrc"
alias myip='curl https://ipinfo.io/ip && ip a | grep -Eo "inet (addr:)?([0-9]*\.){3}[0-9]*" | grep -Eo "([0-9]*\.){3}[0-9]*" | grep -v "127.0.0.1"'
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias ls="exa --all"
alias lst="exa --tree -L2"
alias lsd="exa -l -h -a"
alias tf="thefuck"
alias restartdnsmasq="sudo launchctl stop homebrew.mxcl.dnsmasq && sudo launchctl start homebrew.mxcl.dnsmasq"
alias archiveis="archiveis -ua 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/16C101'"

# Aliases: Git
# ------------

alias g="git"
alias gadd="git add -A ."
alias gcommit="git commit -m"
alias gc="git checkout"
alias gmerge="git merge --no-ff"
alias gpull="git pull"
alias gp="git pull"
alias gpush="git push"
alias gpsh="git push"
alias gs="git status"

# Aliases: Python
# ---------------

alias pip upgrade="pip3 install --upgrade"
alias pup="pip3 install --upgrade --no-cache-dir"

# Aliases: Django
# ---------------

alias djmm="python3 manage.py makemigrations"
alias djm="python3 manage.py migrate"
alias djr="python3 manage.py runserver"
alias djrun="python3 manage.py runserver"

# Aliases: Downloads
# ------------------

alias yt-mp3="youtube-dl --extract-audio --audio-format mp3 "
# alias yt-playlist='youtube-dl -o "./%(playlist_title)s/%(playlist_index)s_%(title)s.%(ext)s" '

# Aliases: Quick View/Open
# ------------------------

alias sub="sublime"
alias bashprofile="open ~/.bash_profile"
alias zshprofile="open ~/.zshrc"
alias hosts="open /etc/hosts"
alias downloads="cd ~/Downloads"
alias download="cd ~/Downloads"
alias dl="cd ~/Downloads"
alias docs="cd ~/Documents"
alias coding="cd ~/Documents/Coding"
alias cod="cd ~/Documents/Coding"
alias proj="cd ~/Projects/"
alias projects="cd ~/Projects/"
alias prefs="open /Applications/System\ Preferences.app"

# Aliases: System
# ---------------

alias cpu="top -o cpu"
alias mem="top -o rsize"
alias smartmontools="smartctl -h"
alias smart="smartctl -a disk0t"
alias wifi="wifi-password"

# Aliases: GNU
# ------------

# alias grep="ggrep"
# alias gsed="sed"
# alias gawk="awk"
# alias gunits="units"
# alias gtime="time"

if which pyenv > /dev/null; 
    then eval "$(pyenv init -)"; 
fi

if which pyenv-virtualenv-init > /dev/null; 
    then eval "$(pyenv virtualenv-init -)"; 
fi

eval $(thefuck --alias)

[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

