################################
# i3pystatus configuration file.
################################
from i3pystatus import Status
import colors

# Get status bar
status = Status(standalone=True)

##############
#color palette
##############
color_good = colors.base02
color_warn = colors.base03
color_bad  = colors.base01
color_cmus = colors.base06


# Displays clock like this:
# Tue 30 Jul 11:59:46 PM KW31
#                          ^-- calendar week
status.register("clock",
    format="%a %-d %b %T",)

# Shows the average load of the last minute and the last 5 minutes
# (the default value for format is used)
status.register("load",
        color=color_good,
        critical_color=color_bad)

status.register("cpu_usage",
        format='{usage:02}%')

# Show the memory usage
status.register("mem",
        color=color_good,
        warn_color=color_warn,
        alert_color=color_bad)

# Shows the address and up/down state of eth0. If it is up the address is shown in
# green (the default value of color_up) and the CIDR-address is shown
# (i.e. 10.10.10.42/24).
# If it's down just the interface name (eth0) will be displayed in red
# (defaults of format_down and color_down)
#
# Note: the network module requires PyPI package netifaces
status.register("network",
    interface="eth0",
    format_up="{v4cidr}{kbs}kB/s",
    color_up=color_good,
    color_down=color_bad,
    start_color=color_good,
    end_color=color_bad)

# Shows disk usage of /
# Format:
# 42/128G [86G]
status.register("disk",
    path="/home",
    format="{used}/{total}G [{avail}G]",
    color=color_good,
    critical_color=color_bad)

# Shows pulseaudio default sink volume
#
# Note: requires libpulseaudio from PyPI
status.register("pulseaudio",
    color_muted=color_good,
    color_unmuted=color_bad,
    multi_colors=True,
    format="♪{volume}",)

# cmus awesome player
status.register("cmus",
    format="{status} {artist} - {title}",
    color=color_cmus)


status.run()
