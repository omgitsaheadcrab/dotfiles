. ~/.bash_aliases

bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

eval "$(pyenv init -)"

if [[ $(ps --no-header --pid=$PPID --format=comm) != "fish" && -z ${BASH_EXECUTION_STRING} ]]
then
	shopt -q login_shell && LOGIN_OPTION='--login' || LOGIN_OPTION=''
	exec fish $LOGIN_OPTION
fi
