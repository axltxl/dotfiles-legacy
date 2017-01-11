#!/bin/bash
##################################
# Install initial environment
##################################

# Absolute path to this script
dotfiles_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Essential environment variables
. $dotfiles_dir/zsh/.zshenv

# version of ansible
ansible_version=1.9.4

############################
# Absolute essentials
############################
absolute_essentials=(
    git \
    stow \
    ruby \
    python-pip \
    python-dev \
    zsh \
    build-essential \
    autoconf \
    automake \
    pkg-config \
    libssl-dev \
)

# Installation log
install_log=${dotfiles_dir}/install.log

# Conflicting files and directories meant to be
# purged prior to installation
conflict_files=(
    $HOME/.Xresources \
    $HOME/.profile \
    $HOME/.zshenv \
    $HOME/.zshrc \
    $DOT_HOME \
    $DOT_PATH \
    $ZSH \
    $ZSH_HOME \
)

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

# Delete conflicting files (needs better implementation)
ins_echo "Deleting conflicting files"
rm -rf "${conflict_files[@]}"

# DOT_PATH is created before used
ins_echo "Creating initial DOT_PATH at $DOT_PATH"
mkdir -p $DOT_PATH/{lib,bin,libexec,include,share}

# Basic home layout
ins_echo "Creating basic home directory layout"
mkdir $HOME/{Projects,Documents,Music,Videos} &> /dev/null || true

# Set up formal $DOT_HOME to be used
# by scripts
ins_echo "Set up dotfiles root directory at $DOT_HOME"
ln -sv $dotfiles_dir $DOT_HOME &>> $install_log

# Enable package sources
ins_echo 'APT initial setup'
sed -e s/#deb-src/deb-src/g /etc/apt/sources.list | \
sudo tee /etc/apt/sources.list > /dev/null

# Install essential packages
ins_echo "Installing essential packages"
sudo apt-get update &>> $install_log && \
sudo apt-get install -y "${absolute_essentials[@]}" &>> $install_log || \
exit 1

# Install essential packages
ins_echo "Installing ansible"
sudo pip install ansible==${ansible_version} &>> $install_log || exit 1
stow -S -t $HOME -d $dotfiles_dir ansible &>> $install_log || exit 1

# Install oh-my-zsh
ins_echo "Installing on-my-zsh"
git clone https://github.com/robbyrussell/oh-my-zsh.git $ZSH &>> $install_log ||\
exit 1

# Set up essentials
ins_echo "Setting up essentials"
stow -S -t $HOME -d $dotfiles_dir essentials &>> $install_log || exit 1
stow -S -t $HOME -d $dotfiles_dir dot &>> $install_log || exit 1

# Set new shell
ins_echo "Setting up zsh as the new shell"
stow -S -t $HOME -d $dotfiles_dir zsh &>> $install_log && \
chsh -s $(which zsh) || exit 1

ins_echo "Setting up sudo privileges for user: $USER"
cat << EOF | sudo tee /etc/sudoers.d/90-$USER &>> $install_log
$USER ALL=(ALL) NOPASSWD:ALL
EOF

# Finished
ins_echo "---------------------------------------------------"
ins_echo "Your dotfiles environment has been properly set up."
ins_echo "You will need to re-login for the changes to be applied."
ins_echo "Once done, you can proceed to change your environment using"
ins_echo "the *dot* command, execute dot without arguments for details."

