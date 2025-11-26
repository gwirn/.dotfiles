#!/bin/bash

# nicer grep colors
export GREP_COLORS='sl=49;39:cx=40;37:mt=49;38;5;208:fn=49;38;5;131:ln=49;38;5;108:bn=49;38;5;103:se=49;39'

# A better PS1
PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'; PS1='\r╭[\[\e[38;5;66m\]\u\[\e[0m\]@\[\e[1;2m\]\h\[\e[0m\]]\[\e[38;5;32;3m\]${VIRTUAL_ENV##*/}\[\e[0m\] \[\e[38;5;172;2m\]\w\[\e[0m\] \[\e[38;5;22m\]${PS1_CMD1}\[\e[0m\]\[\e[38;5;196;2m\]$(rv="$?"; if [ "$rv" -ne 0 ];then echo "[${rv}]"; fi)\[\e[0m\]\n╰\[\e[0;38;5;178;1m\]»\[\e[0m\] '

# more sensible `sudoeditor`
if [ -x "$HOME/.local/bin/nvim" ];then export EDITOR="$HOME/.local/bin/nvim";elif [ -x /usr/bin/vim ];then export EDITOR=/usr/bin/vim;fi
