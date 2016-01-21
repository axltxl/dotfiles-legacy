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

# Force dpi settings at low level
xrandr --dpi $DISPLAY_DPI

# Start all the things!
dot-init-custom

# Finally, execute window manager
exec i3
