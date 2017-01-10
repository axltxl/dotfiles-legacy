######################################
# Initial settings for X sessions
# vim: ft=sh
######################################

# Make sure all environment variables are up to date
rm -f $DOT_ENV_OUT
dot-reload &> /dev/null

# Update settings on keyboard
config-xmodmap

# Update .Xresources
config-xrdb
