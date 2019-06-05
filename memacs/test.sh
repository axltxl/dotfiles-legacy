#!/bin/bash
# Text emacs setup separately
set -e
MEMACS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SPACEMACS_DIR=${HOME}/spacemacs

emacs_set_config() {
    set -x
    cd $HOME
    if [ -L .emacs.d ]; then
        rm .emacs.d
        ln -sv $1 .emacs.d
    else
        return 1
    fi
    set +x
}
# Set this config and run emacs
emacs_set_config $MEMACS_DIR && emacs

# Put it bac
emacs_set_config $SPACEMACS_DIR
