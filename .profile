force_color_prompt=yes
# enable ** for recursive globbing
shopt -s globstar

[ -e "$HOME/.dircolors" ] && DIR_COLORS="$HOME/.dircolors"
[ -e "$DIR_COLORS" ] || DIR_COLORS=""
eval "`dircolors -b $DIR_COLORS`"

# foreground        # backgroung          # color
PL='\[\033[m\]'                           # all plain
FN='\[\033[30m\]'    BN='\[\033[40m\]'    # black
FR='\[\033[31m\]'    BR='\[\033[41m\]'    # red
FG='\[\033[32m\]'    BG='\[\033[42m\]'    # green
FY='\[\033[33m\]'    BY='\[\033[43m\]'    # yellow
FB='\[\033[34m\]'    BB='\[\033[44m\]'    # blue
FP='\[\033[35m\]'    BP='\[\033[45m\]'    # purple
FC='\[\033[36m\]'    BC='\[\033[46m\]'    # cyan
FW='\[\033[37m\]'    BW='\[\033[47m\]'    # white
PROMPT_COMMAND='ret=$?'                   # for the PS1 prompt.
PS1="[ $FG\u$FC@$FB\h $PL| $FC\W $PL| \t | \`[[ \$? -ne 0 ]]&&echo '$FR'\`\$ret $PL] "
unset PL {F,B}{N,R,G,Y,B,P,C,W}           # dont clutter env

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export BASH_SILENCE_DEPRECATION_WARNING=1
export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.socket"

PATH=$PATH:/usr/local/programs/google-cloud-sdk/bin:$HOME/.local/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f ‘/usr/local/programs/google-cloud-sdk/path.bash.inc’ ]; then . ‘/usr/local/programs/google-cloud-sdk/path.bash.inc’; fi
# The next line enables shell command completion for gcloud.
if [ -f ‘/usr/local/programs/google-cloud-sdk/completion.bash.inc’ ]; then . ‘/usr/local/programs/google-cloud-sdk/completion.bash.inc’; fi
[[ -r “/usr/local/etc/profile.d/bash_completion.sh” ]] && . “/usr/local/etc/profile.d/bash_completion.sh”

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
