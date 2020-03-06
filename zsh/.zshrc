if which pyenv > /dev/null; 
    then eval "$(pyenv init -)"; 
fi

if which pyenv-virtualenv-init > /dev/null; 
    then eval "$(pyenv virtualenv-init -)"; 
fi

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme
# source /usr/local/opt/git-extras/share/git-extras/git-extras-completion.zsh

POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S}"

# POWERLEVEL9K_DIR_PATH_SEPARATOR=$'\ue0c1  '
# POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\ue0c0 '
# POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\ue0c2 '



POWERLEVEL9K_MODE='nerdfont-complete'


export DEFAULT_USER=$USER

# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir vcs)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(background_jobs command_execution_time status root_indicator virtualenv swap time)
POWERLEVEL9K_DISABLE_RPROMPT=false

POWERLEVEL9K_RAM_ELEMENTS=(ram_free)



ZSH_THEME=powerlevel10k/powerlevel10k
source ~/powerlevel10k/powerlevel10k.zsh-theme


# -- PATH --
# export PATH="/usr/local/bin:/usr/local/opt:/usr/local/opt/ruby/bin:/usr/local/opt/gnu-which/libexec/gnubin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/opt/grep/libexec/gnubin:/usr/local/opt/gnu-time/libexec/gnubin:/usr/local/opt/curl/bin:/usr/local/opt/mozjpeg/bin:/usr/local/sbin:/usr/local/MacGPG2/bin:/opt/X11/bin:/usr/bin:/usr/sbin:/bin:/sbin"

export PATH="$HOME/.poetry/bin:/usr/local/opt/coreutils/bin:/usr/local/bin:/usr/local/opt/gnu-tar/bin:/usr/local/opt/coreutils/bin:/usr/local/opt/gnu-which/bin:/usr/local/sbin:/usr/local/MacGPG2/bin:/opt/X11/bin:/usr/bin:/usr/sbin:/bin:/sbin"

# export PYTHONPATH="/usr/local/Cellar/python/3.7.4/bin/python3"


# -- PYTHON PATH --
# export PATH="/Users/ruchir/.pyenv/shims:$PATH"
# export PATH="/usr/local/bin/python3:$PATH"


# -- RUBY PATH -- 
#export PATH="/usr/local/opt/ruby/bin:$PATH"
#export LDFLAGS="-L/usr/local/opt/ruby/lib"
#export CPPFLAGS="-I/usr/local/opt/ruby/include"
#export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"

# -- MAKE PATH -- 
# PATH="/usr/local/opt/make/libexec/gnubin:$PATH"

# -- WHICH PATH -- 
#PATH="/usr/local/opt/gnu-which/libexec/gnubin:$PATH"

# -- COREUTILS PATH --
#PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# -- GREP PATH --
# PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"

# -- GNU TIME PATH -- 
#PATH="/usr/local/opt/gnu-time/libexec/gnubin:$PATH"

# -- CURL PATH -- 
#export PATH="/usr/local/opt/curl/bin:$PATH"
#export LDFLAGS="-L/usr/local/opt/curl/lib"
#export CPPFLAGS="-I/usr/local/opt/curl/include"
#export PKG_CONFIG_PATH="/usr/local/opt/curl/lib/pkgconfig"

# -- MOZJPEG PATH --
#export PATH="/usr/local/opt/mozjpeg/bin:$PATH"
#export LDFLAGS="-L/usr/local/opt/mozjpeg/lib"
#export CPPFLAGS="-I/usr/local/opt/mozjpeg/include"
#export PKG_CONFIG_PATH="/usr/local/opt/mozjpeg/lib/pkgconfig"



# -- PATH -- 
#export PATH="/usr/local/bin/pyenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/MacGPG2/bin:/opt/X11/bin:$PATH"
#export PATH="/usr/local/sbin:$PATH"

# --- PATH: GNU ---
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# -- ALIAS -- 
alias clr="clear"
# alias myip="curl icanhazip.com"
alias ll="ls -al"
alias o="open"
alias ut="uptime"
alias downloads="cd ~/Downloads"
alias download="cd ~/Downloads"
alias dl="cd ~/Downloads"
alias docs="cd ~/Documents"
alias coding="cd ~/Documents/Coding"
alias cod="cd ~/Documents/Coding"
alias wget="wget -c"
alias reloadbash="source ~/.bash_profile"
alias reloadzsh="source ~/.zshrc"
alias myip='curl https://ipinfo.io/ip && ip a | grep -Eo "inet (addr:)?([0-9]*\.){3}[0-9]*" | grep -Eo "([0-9]*\.){3}[0-9]*" | grep -v "127.0.0.1"'
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias ls="exa --all"
alias lst="exa --tree -L2"
alias lsd="exa -l -h -a"
alias tf="thefuck"
alias djmm="python manage.py makemigrations"
alias djm="python manage.py migrate"
alias djr="python manage.py runserver"
alias djrun="python manage.py runserver"
alias wifi="wifi-password"
alias prefs="open /Applications/System\ Preferences.app"
alias restartdnsmasq="sudo launchctl stop homebrew.mxcl.dnsmasq && sudo launchctl start homebrew.mxcl.dnsmasq"
alias smartmontools="smartctl -h"
alias smart="smartctl -a disk0t"


# --- ALIAS: YOUTUBE-DL ---
alias yt-mp3="youtube-dl --extract-audio --audio-format mp3 "
# alias yt-playlist='youtube-dl -o "./%(playlist_title)s/%(playlist_index)s_%(title)s.%(ext)s" '

# --- ALIAS: GIT ---
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

export XML_CATALOG_FILES="/usr/local/etc/xml/catalog"

# --- ALIAS: QUICK OPEN ---
alias sub="sublime"
alias bashprofile="open ~/.bash_profile"
alias zshprofile="open ~/.zshrc"
alias hosts="open /etc/hosts"

# --- ALIAS: SYSTEM INFO ---
alias cpu="top -o cpu"
alias mem="top -o rsize"

# --- ALIAS: GNU ---
# alias grep="ggrep"
# alias gsed="sed"
# alias gawk="awk"
# alias gunits="units"
# alias gtime="time"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/usr/local/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/usr/local/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/usr/local/anaconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/usr/local/anaconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<

# export PATH="/usr/local/opt/ruby/bin:$PATH"
# export PATH="$HOME/.poetry/bin:$PATH"

# PIP ALIAS
alias pip upgrade="pip3 install --upgrade"
alias pup="pip3 install --upgrade --no-cache-dir"



# if which pyenv > /dev/null; 
#     then eval "$(pyenv init -)"; 
# fi

# if which pyenv-virtualenv-init > /dev/null; 
#     then eval "$(pyenv virtualenv-init -)"; 
# fi
