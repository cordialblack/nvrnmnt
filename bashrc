## path and environment
PATH="$HOME/bin:/usr/local/bin:/bin:/usr/bin:/usr/sbin:/sbin:~/bin";
if [ -d "$HOME/Library/Python/2.7/bin" ]; then
  PATH="$PATH:$HOME/Library/Python/2.7/bin"
fi
export PATH

stty erase ^?

## set up the prompt
H=`hostname | tr a-z A-Z`
#export PS1="- \[\033[0;36m\]$H\[\033[0m\] -\n[\w] Yes, master? >"
export PS1="╭─ \[\033[0;36m\]$H\[\033[0m\]\n╰─ [\w] $ "

## aliases
alias more='less'
alias su='su -m'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias c='clear'
alias ls='ls -G -F'
alias q='exit'
alias t='whoami'
alias ntcp='netstat -na | grep -i listen'
alias nudp='netstat -na | grep -i udp'
alias psx="ps aux | grep -i $1"

## source local configs
bash_files=(.bash_local .bash_aliases)

for bashFile in ${bash_files[@]}; do
        if [ -f $bashFile ]; then
                . ~/$bashFile
        fi
done

