######################################
# Initial settings for X sessions
# vim: ft=sh
######################################

# Make sure all environment variables are up to date
rm -f $DOT_ENV_OUT
dot-reload &> /dev/null

# Update settings on keyboard
config-xmodmap

# Fix overall background color
xsetroot -solid "#101010"

# Update .Xresources
config-xrdb

# xrandr settings must be applied
# before going into i3.
dot-xrandr-setup

# Finally, execute window manager
exec $I3WM_BIN -V >> $I3WM_LOG_FILE 2>&1
