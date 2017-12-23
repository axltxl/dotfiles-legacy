#!/bin/bash
##################################
# Install initial environment
##################################
set -e

# Absolute path to this script
dotfiles_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Essential environment variables
. $dotfiles_dir/zsh/.zshenv

# Installation log
install_log=${dotfiles_dir}/install.log

############################
# Utility functions used by this installation script
############################

ins_echo() {
    echo "* $(tput bold)$@$(tput sgr0)"
}

ins_splash() {
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

############################
# It is essential to warn the user about the consequences
# of running the installation script, since it really alters
# things inside the home directory
############################
ins_splash
ins_echo "This is really going to assf*ck your home directory ..."
while [[ $answer != 'y' && $answer != 'n' ]]; do
    read -p "  Are you sure about this? (y/n)> " answer
done
[ $answer == 'n' ] && exit 0
unset answer

# Delete any previous log
rm -f $install_log

# DOT_PATH is created before used
ins_echo "Creating initial DOT_PATH at $DOT_PATH"
mkdir -p $DOT_PATH/{lib,bin,libexec,include,share} || true

# Basic home layout
ins_echo "Creating basic home directory layout"
mkdir -p $HOME/{Projects,Documents,Music,Videos} || true

# Set up formal $DOT_HOME to be used
# by scripts
ins_echo "Set up dotfiles root directory at $DOT_HOME"
ln -svf $dotfiles_dir $DOT_HOME

# Install oh-my-zsh
ins_echo "Installing on-my-zsh"
rm -rf $ZSH; git clone https://github.com/robbyrussell/oh-my-zsh.git $ZSH 

# Set up essentials
ins_echo "Setting up essentials"
stow -S -t $HOME -d $dotfiles_dir essentials
stow -S -t $HOME -d $dotfiles_dir dot

# Set new shell
ins_echo "Setting up zsh as the new shell"
stow -S -t $HOME -d $dotfiles_dir zsh  && \
chsh -s $(which zsh) || exit 1

# Finished
ins_echo "---------------------------------------------------"
ins_echo "Your dotfiles environment has been properly set up."
ins_echo "You will need to re-login for the changes to be applied."
ins_echo "Once done, you can proceed to change your environment using"
ins_echo "the *dot* command, execute dot without arguments for details."
