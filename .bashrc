# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias vim='vim'
alias t="tmux attach || tmux new -s Master"


# Fuzzy Search
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
