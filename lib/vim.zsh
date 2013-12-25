# key-bindings and settings associated with zsh vi mode
#
SEGMENT_SEPARATOR='⮀'

# enable vi mode
bindkey -v

bindkey -M viins 'jj' vi-cmd-mode
bindkey -M vicmd '/' history-incremental-search-backward

function zle-keymap-select zle-line-init {
    # Adds a visual indicator to the right side prompt
    #RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"

    # Adds a visual indicator to PROMPT
    PROMPT="${${KEYMAP/vicmd/${ORIG_PROMPT}${VIM_INSERT_MODE}}/(main|viins)/${ORIG_PROMPT}%F{red${VIM_INSERT_MODE}%f}"


    # Resets the prompt to show any changes to it
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

# decrease delay after <ESC> is hit
#export KEYTIMEOUT=4
