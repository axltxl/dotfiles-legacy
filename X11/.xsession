######################################
# Initial settings for X sessions
######################################

# Make sure all environment variables are up to date
rm -f $DOT_ENV_OUT
dot-reload &> /dev/null

# Update settings on keyboard
config-xmodmap

# Fix overall background color
xsetroot -solid "#101010"

# Update .Xresources
config-xrdb --no-template

# xrandr settings must be applied
# before going into i3.
dot-xrandr-setup

# Finally, execute window manager
exec i3
