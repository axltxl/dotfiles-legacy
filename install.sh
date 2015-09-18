#!/bin/bash
##################################
# Install initial environment
##################################

# Absolute path to this script
dotfiles_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Essential environment variables
. $dotfiles_dir/zsh/.zshenv

# Absolute essentials

absolute_essentials=(
    stow \
    python-pip \
    zsh \
    git \
    build-essential \
    rxvt-unicode-256color \
    xsel \
)

# Delete conflicting files (needs better implementation)
rm -rf ~/.profile $DOT_HOME $DOT_PATH $ZSH $ZSH_HOME

# DOT_PATH is created before used
mkdir -p $DOT_PATH/{lib,bin,libexec,include,share}

# Set up formal $DOT_HOME to be used
# by scripts
ln -sv $dotfiles_dir $DOT_HOME

# Install stow
echo "* Installing essential packages"
sudo apt-get install -y ${absolute_essentials[@]}

# Install oh-my-zsh
echo "* Installing on-my-zsh"
git clone https://github.com/robbyrussell/oh-my-zsh.git $ZSH

# Set new shell
echo "* chsh -s zsh"
stow -S -t $HOME -d $dotfiles_dir zsh && chsh -s $(which zsh)

# Finished
echo "Your dotfiles environment has been properly set up. You will need to re-login for the changes to be applied."