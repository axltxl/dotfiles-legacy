######################################
# Initial settings for X sessions
# vim: ft=sh
######################################

# Make sure all environment variables are up to date
rm -f $DOT_ENV_OUT
dot-reload &> /dev/null

# Recreate dconf settings database with those I like
# Source: https://github.com/catern/dotfiles/tree/master/home/.config/dconf/user.d
cat ~/.config/dconf/user.d/* | dconf load

# Update .Xresources
config-xrdb
