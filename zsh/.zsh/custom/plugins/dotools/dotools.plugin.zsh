alias dotcd='cd $DOT_HOME'
alias dotu='git -C $DOT_HOME pull' # Update dotfiles
alias ds='dotstow'
alias dus='dotunstow'

# This will automatically stow directories inside $DOT_HOME
dotstow() {
    for i in "$@"; do
        stow --verbose=1 -R -d $DOT_HOME -t $HOME $i
    done
}

# This will automatically unstow directories inside $DOT_HOME
dotunstow() {
    for i in "$@"; do
        stow --verbose=1 -D -d $DOT_HOME -t $HOME $i
    done
}
