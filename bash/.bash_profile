
# -- PATH:
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/MacGPG2/bin:/opt/X11/bin"
# --

export CLICOLOR=1
export MYEDITOR="subl"

# -- ALIAS:
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

alias ipython="ipython3"
alias clr="clear"
alias ip="curl icanhazip.com"
alias ll="ls -al"
alias la="ls -A"
alias grep="grep --color=auto"
alias fgrep="grep --color=auto"
alias egrep="grep --color=auto"
alias o="open"
alias ut="uptime"
alias downloads="cd ~/Downloads"
alias download="cd ~/Downloads"
alias dl="cd ~/Downloads"
alias docs="cd ~/Documents"
alias coding="cd ~/Documents/Coding"
alias cod="cd ~/Documents/Coding"
alias wget="wget -c"
alias projects="cd ~/Projects"
alias prj="cd ~/Projects"
alias pro="cd ~/Projects"
alias notebook="~/.pyenv/versions/3.7.6/bin/jupyter-lab --no-browser"
alias jnb="~/.pyenv/versions/3.7.6/bin/jupyter-lab --no-browser"
alias code.="code ."
alias sudp=sudo
alias sudu=sudo
alias cd..="cd .."
alias gut=git
alias subl="/usr/local/bin/subl"
alias reloadbash="source ~/.bash_profile"
alias rb="source ~/.bash_profile"
alias bashprofile=$MYEDITOR" ~/.bash_profile"
# --

# -- PYENV
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi
# --

# -- FILE/FOLDER OPS --
cl () { cd "$1"; ls -a; }
