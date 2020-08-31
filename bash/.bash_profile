# -- PATH --
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/MacGPG2/bin:/opt/X11/bin"
# --

export TERM="xterm-256color"
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export MYEDITOR="subl"

# -- ALIAS -- 
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

alias cd..='cd ../'
alias .1='cd ../'
alias .2='cd ../../'
alias .3='cd ../../../'
alias ~="cd ~"
alias ipython="ipython3"
alias clr="clear"
alias cls="clear"
alias ip="curl icanhazip.com"
alias ll="ls -al"
alias la="ls -A"
alias grep="grep --color=auto"
alias fgrep="grep --color=auto"
alias egrep="grep --color=auto"
alias o="open"
alias ut="uptime"
alias docs="cd ~/Documents"
alias projects="cd ~/Projects"
alias prj="cd ~/Projects"
alias downloads="cd ~/Downloads"
alias download="cd ~/Downloads"
alias dl="cd ~/Downloads"
alias wget="wget -c"
alias notebook="~/.pyenv/versions/3.7.6/bin/jupyter-lab --no-browser"
alias jnb="~/.pyenv/versions/3.7.6/bin/jupyter-lab --no-browser"
alias subl="/usr/local/bin/subl"
alias reloadbash="source ~/.bash_profile"
alias rb="source ~/.bash_profile"
alias bashprofile=$MYEDITOR" ~/.bash_profile"
alias numfiles='echo $(ls -1 | wc -l)'          # Display no. of files in dir
alias lsock='sudo /usr/sbin/lsof -i -P'         # Display open packets
alias cpu-hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -5'
alias ls='exa --color=always'
alias lt='exa -alg --sort=modified'
alias powermetrics='sudo powermetrics'
alias grep='grep --color=auto'
# --

# -- PYENV --
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi
# --

# -- FILE/FOLDER OPS --
cl () { cd "$1"; ls -a; }
# --
