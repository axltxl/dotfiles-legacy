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

# OS detection goes in here
export DOT_OS=`uname -s`

# These are used by dot-env
export DOT_ENV_OUT=${HOME}/.dotenv.out
export DOT_ENV_CFG=${HOME}/.dotenv

# PATH is set through a set of scripts
if [ -d $ZSH_HOME ]; then
    for i in $ZSH_HOME/profile.d/*; do
        . $i
    done
    unset i
fi

# Load ~/.xprofile if any
[[ -f $HOME/.xprofile ]] && . $HOME/.xprofile

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
