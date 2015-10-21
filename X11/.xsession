######################################
# Initial settings for X sessions
######################################

# Set keyboard repeat rate and delay before it
xset r rate 200 50

# Fix overall background color
xsetroot -solid "#101010"

# keyboard mappings configuration
xmodmap ~/.Xmodmap

# Finally, execute window manager
exec i3
