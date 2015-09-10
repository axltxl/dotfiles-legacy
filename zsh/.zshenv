# Path to oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Path to zsh scripts
export ZSH_HOME=$HOME/.zsh

# PATH is set through a set of scripts
for i in $ZSH_HOME/env.d/*; do
    . $i
done
unset i
