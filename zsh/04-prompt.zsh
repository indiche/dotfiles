preprompt() {
    vcs_info

    local PWD="%F{blue}%~%f"

    local PREPROMPT="\n$PWD ${vcs_info_msg_0_}"

    print -P $PREPROMPT
}

setprompt() {
    add-zsh-hook precmd preprompt

    PROMPT="%(?.%F{magenta}.%F{red})❯%f "
}

setprompt
