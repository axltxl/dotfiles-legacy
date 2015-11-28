# Path to oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Path to zsh scripts
export ZSH_HOME=$HOME/.zsh

# Path to dotfiles folder
export DOT_HOME=$HOME/.dotfiles

# Custom installs PATH
export DOT_PATH=$HOME/.local/dot

# DOT_BRANCH defines the git branch
# to be pulled when dot-updating
export DOT_BRANCH=develop

# PATH is set through a set of scripts
if [ -d $ZSH_HOME ]; then
    for i in $ZSH_HOME/profile.d/*; do
        . $i
    done
    unset i
fi
