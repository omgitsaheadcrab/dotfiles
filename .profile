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
export EDITOR="nano"
export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.socket"
export XDG_BIN_HOME="$HOME/.local/bin"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_LIB_HOME="$HOME/.local/lib"
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export NOTMUCH_CONFIG="$XDG_CONFIG_HOME"/notmuch/config
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

xrdb -load ~/.config/X11/Xresources

PATH=$PATH:/usr/local/programs/google-cloud-sdk/bin:$HOME/.local/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f ‘/usr/local/programs/google-cloud-sdk/path.bash.inc’ ]; then . ‘/usr/local/programs/google-cloud-sdk/path.bash.inc’; fi
# The next line enables shell command completion for gcloud.
if [ -f ‘/usr/local/programs/google-cloud-sdk/completion.bash.inc’ ]; then . ‘/usr/local/programs/google-cloud-sdk/completion.bash.inc’; fi
[[ -r “/usr/local/etc/profile.d/bash_completion.sh” ]] && . “/usr/local/etc/profile.d/bash_completion.sh”

# Set CAPS to CTRL on laptop
if [ $HOSTNAME == 'X230-i7' ]; then
    /usr/bin/setxkbmap -option "ctrl:nocaps"
fi

eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"
