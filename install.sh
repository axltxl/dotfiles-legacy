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


#
# Utility functions used by this installation script
#

function ins_echo() {
    echo "* $(tput bold)$@$(tput sgr0)"
}

function ins_splash() {
    echo
    echo "***************************************************"
    echo "  _________     _______________________            ";
    echo "  ______  /_______  /___  __/__(_)__  /____________";
    echo "  _  __  /_  __ \  __/_  /_ __  /__  /_  _ \_  ___/";
    echo "  / /_/ / / /_/ / /_ _  __/ _  / _  / /  __/(__  ) ";
    echo "  \__,_/  \____/\__/ /_/    /_/  /_/  \___//____/  ";
    echo "                                                   ";
    echo "***************************************************"
}

# It is essential to warn the user about the consequences
# of running the installation script, since it really alters
# things inside the home directory
ins_splash
ins_echo "This is really going to assf*ck your home directory ..."
while [[ $answer != 'y' && $answer != 'n' ]]; do
    read -p "  Are you sure about this? (y/n)> " answer
done
[ $answer == 'n' ] && exit 0

# Delete conflicting files (needs better implementation)
ins_echo "Deleting conflicting files"
rm -rf ~/.profile $DOT_HOME $DOT_PATH $ZSH $ZSH_HOME

# DOT_PATH is created before used
ins_echo "Creating initial DOT_PATH at $DOT_PATH"
mkdir -p $DOT_PATH/{lib,bin,libexec,include,share}

# Basic home layout
ins_echo "Creating basic home directory layout"
mkdir $HOME/{Projects,Documents,Music,Videos} &> /dev/null || true

# Set up formal $DOT_HOME to be used
# by scripts
ln -s $dotfiles_dir $DOT_HOME

# Install stow
ins_echo "Installing essential packages"
sudo apt-get update && sudo apt-get install -y "${absolute_essentials[@]}" > /dev/null || exit 1

# Install oh-my-zsh
ins_echo "Installing on-my-zsh"
git clone https://github.com/robbyrussell/oh-my-zsh.git $ZSH > /dev/null || exit 1

# Set up essentials
ins_echo "Setting up essentials"
stow -S -t $HOME -d $dotfiles_dir essentials > /dev/null || exit 1

# Set new shell
ins_echo "chsh -s zsh"
stow -S -t $HOME -d $dotfiles_dir zsh && chsh -s $(which zsh) > /dev/null || exit 1

# Finished
ins_echo "Your dotfiles environment has been properly set up. You will need to re-login for the changes to be applied."
