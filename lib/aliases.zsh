# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Basic directory operations
alias ...='cd ../..'
alias -- -='cd -'

# Super user
alias _='sudo'
alias please='sudo'

#alias g='grep -in'

# Show history
if [ "$HIST_STAMPS" = "mm/dd/yyyy" ]
then
    alias history='fc -fl 1'
elif [ "$HIST_STAMPS" = "dd.mm.yyyy" ]
then
    alias history='fc -El 1'
elif [ "$HIST_STAMPS" = "yyyy-mm-dd" ]
then
    alias history='fc -il 1'
else
    alias history='fc -l 1'
fi

# List direcory contents
alias lsa='ls -lah'
alias l='ls -lFh'
alias ll='ls -laFh'
alias la='ls -lAh'
alias sl=ls # often screw this up

# Ack that ignores case and lists only lines that have match
alias afind='ack -il'

# Safe interactive operations
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Human readable figures
alias df='df -h'
alias du='du -h'

# Run sudo vim and skips creation of swap files
alias svim='sudo vim -n'
