alias rm="rm -r"
alias rmf="rm -rf"

alias cp="cp -r"

alias mk="mkdir -p"
alias mkdir="mkdir -p"

alias ls="ls -GFh"
alias ll="ls -GFhl"

alias gds="git difftool --extcmd 'icdiff --highlight --line-numbers' | less"

alias sml="rlwrap sml"

# OS X Spectific
if [[ $(uname) = "Darwin" ]]; then
    alias bu="brew update; brew upgrade --all; brew cleanup; brew doctor"
fi
