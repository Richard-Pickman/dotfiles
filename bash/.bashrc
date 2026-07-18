# run for interactive shells only
[[ $- != *i* ]] && return

PATH=$PATH:~/bin

alias vi=nvim
alias c=clear
alias p=pwd
alias l='ls -a'
alias ls='ls --color=auto'
alias b='cd ..;pwd'
alias type='type -a'
alias code='code --disable-gpu'
alias cdd='cd ~/programming/javascript/dungeon'

/home/jason/bin/calendar.py
set -o vi

#PROMPT_COMMAND='printf "\\e]9;9;%s\\a" "$PWD"; '"${PROMPT_COMMAND:-}"
PS1='\[\033[0;94m\]\u@\h $ \[\033[0m\]'

# display line number when debugging bash scripts
export PS4="+ \${LINENO} "

export CODEX_CONFIG_PATH="$HOME/.codex/config.toml"

export HISTCONTROL=ignoredups

~/motd.bash
