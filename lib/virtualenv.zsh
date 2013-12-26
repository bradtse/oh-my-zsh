# Disable prepending the virtual env to the prompt
export VIRTUAL_ENV_DISABLE_PROMPT=1

# Activate a virtual env
bash activate function activate() {
    source ~/$1/bin/activate
}

# A function that echos the the virtual env basename
bash virtualenv_info function virtualenv_info() {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`')'
}

# When the virtual env is active it will show on the right side
RPROMPT='%F{green$(virtualenv_info)%f'
