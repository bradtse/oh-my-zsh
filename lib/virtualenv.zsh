RIGHT_ARROW='⮀'
LEFT_ARROW='⮂'
BG_COLOR='cyan'
FG_COLOR='black'

# Disable prepending the virtual env to the prompt since I will be handling
# this myself on the right side prompt
export VIRTUAL_ENV_DISABLE_PROMPT=1

# Helper to activate a virtual env
bash activate function activate() {
    source ~/virtualenvs/$1/bin/activate
}

# A function that echos a pretty version of the current virtual environment.
# Excuse the extremely ugly code.
bash virtualenv_info function virtualenv_info() {
    [ $VIRTUAL_ENV ] && echo %F{$BG_COLOR$LEFT_ARROW%f%K{$BG_COLOR%F{$FG_COLOR `basename $VIRTUAL_ENV` %f%k%F{$BG_COLOR$RIGHT_ARROW%f
}

# When the virtual env is active it will show on the right side
RPROMPT='$(virtualenv_info)'
