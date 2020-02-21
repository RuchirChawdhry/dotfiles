export PATH="/usr/local/anaconda3/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/MacGPG2/bin:/opt/X11/bin"

# ALIAS:
alias clr="clear"
alias ip="curl icanhazip.com"
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

#need to create one for youtube-dl -cit as well
# test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# export PATH="/usr/local/bin:$PATH"
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"


if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/usr/local/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

if [ -e /Users/ruchir/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/ruchir/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
