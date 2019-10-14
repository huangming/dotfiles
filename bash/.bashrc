# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
[[ $- != *i* ]] && return                    

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# rdesktop t450 screen friendly
alias rdp='rdesktop -a 16 -g 1365x722 -r soun    ->   d:local -5 '

# make vim clipbord support
alias vi='vimx'
alias vim='vimx'

# rm files safe
alias rm='mv -t /tmp/trash'

# start vbox machine friendly
alias svbox='VBoxManage startvm' 
alias evbox='function __evbox(){ VBoxManage controlvm "$*" savestate;unset -f __evbox; };__evbox' 

# exec fish

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
eval "$(pyenv virtualenv-init -)"

# if [[ ($COLORTERM == gnome-terminal || $(cat /proc/$PPID/cmdline) == *gnome-terminal* ) && $TERM != screen* ]]; then
#   export TERM=xterm-256color
# fi
export TERM=xterm-256color

# color
# if [ `whoami` == "root" ];then
#    PS1="\[\033[1;31m\]\u@\h: \[\033[0;33m\]\A \[\033[36m\]\w # \[\033[0;38m\]"
# else
#     PS1="\[\033[1;32m\]\u@\h: \[\033[0;33m\]\A \[\033[36m\]\w > \[\033[0;38m\]"
# fi

