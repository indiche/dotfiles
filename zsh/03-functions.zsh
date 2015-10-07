precmd() {
    case $TERM in
        rxvt-256color | xterm-256color )
            print -Pn '\e]0;%~\a'
    esac
}

preexec() {
    case $TERM in
        rxvt-256color | xterm-256color )
            print -Pn '\e]0;%~\a'
    esac
}

__git_dirty() {
    # check if we're in a git repo
    command git rev-parse --is-inside-work-tree &>/dev/null || return
    # check if it's dirty
    command git diff --quiet --ignore-submodules HEAD &>/dev/null

    (($? == 1)) && echo 'red' || echo 'green'
}

xopen() {
    open $(find . -name '*.xcworkspace' -maxdepth 1) 2> /dev/null

    if [ $? -ne 0 ]; then
        open -a /Applications/Xcode.app $(find . -name '*.xcodeproj' -maxdepth 1) 2> /dev/null

        if [ $? -ne 0 ]; then
            echo "No .xcworkspace or .xcodeproj found in the working directory."
        fi
    fi
}

proj() {
    cd $(find ~/Code -maxdepth 1 -type d | selecta)
}
