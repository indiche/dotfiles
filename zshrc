autoload -U colors && colors
autoload -U compinit && compinit

autoload -U vcs_info
autoload -U add-zsh-hook

bindkey -e

setopt NO_BEEP
setopt AUTO_CD
setopt INTERACTIVE_COMMENTS
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY
setopt EXTENDED_HISTORY
setopt COMPLETE_IN_WORD
setopt ALWAYS_TO_END
setopt PROMPT_SUBST
unsetopt MENU_COMPLETE
setopt AUTO_MENU

# Import configs
for r in $HOME/.zsh/*.zsh; do
  source $r
done

# rbenv
if which rbenv &> /dev/null; then
    export PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init -)"
fi

source ~/.zshrc.local
