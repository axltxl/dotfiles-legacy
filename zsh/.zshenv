# Path to oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Path to zsh scripts
export ZSH_HOME=$HOME/.zsh

# Path to dotfiles folder
export DOT_HOME=$HOME/.dotfiles

# Custom installs PATH
export DOT_PATH=$HOME/.local/dot

# LD_LIBRARY_PATH is used in preference to any run time or default system linker path.
export LD_LIBRARY_PATH=$DOT_PATH/lib

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Standard PATH at the user level
export PATH=$DOT_PATH/bin:$PATH
