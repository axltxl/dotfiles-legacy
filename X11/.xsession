######################################
# Initial settings for X sessions
######################################

# Update settings on keyboard
xkb_update

# Fix overall background color
xsetroot -solid "#101010"

# Update .Xresources
xrdb-config

# Make sure latest i3 config gets generated
i3-config

# Finally, execute window manager
exec i3
