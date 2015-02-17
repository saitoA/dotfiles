#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

alias ls='ls --color=auto --show-control-chars'
alias ll='ls -l'
alias l='ls -CF'
alias vi='vim'

# locale
export TZ=JST-9
export TPUT_COLORS=256
PS1='\n[\u@\h \t \W]\n\$ '

[[ -s ${HOME}/.nvm/nvm.sh ]] && . ${HOME}/.nvm/nvm.sh; nvm use 0 > /dev/null
