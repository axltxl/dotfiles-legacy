################################
# i3pystatus configuration file.
################################
from i3pystatus import Status
import os
import colors

# Get status bar
status = Status(standalone=True)

##############
#color palette
##############
color_good = colors.base05
color_warn = colors.base09
color_bad  = colors.base08


# Displays clock like this:
# Tue 30 Jul 11:59:46 PM KW31
#                          ^-- calendar week
status.register("clock",
    format=" %a %-d %b %T",)

# Shows the average load of the last minute and the last 5 minutes
# (the default value for format is used)
status.register("load",
        format=" {avg1:>5} {avg5:>5} {avg15:>5}",
        color=color_good,
        critical_color=color_bad)

status.register("cpu_usage",
        format=' {usage:>03}%')

# Show the memory usage
status.register("mem",
        format=" {avail_mem:>8} MiB",
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
net_iface = "eth0"
if net_iface == "wlan0":
    net_fmt=" {essid:.16} ({quality:>6}%) {kbs:>8} kB/s"
else:
    net_fmt="  {kbs:^06} kB/s"

status.register("network",
    interface="eth0",
    dynamic_color=False,
    on_leftclick="wicd-gtk",
    format_up=net_fmt,
    color_down=color_bad,
    start_color=color_good,
    end_color=color_bad)

# Shows disk usage of /
# Format:
# 42/128G [86G]
status.register("disk",
    path="/home",
    format=" {used:^7}/{total:^7} [{avail:^7}] GiB",
    color=color_good,
    critical_color=color_bad)

# Shows pulseaudio default sink volume
#
# Note: requires libpulseaudio from PyPI
status.register("pulseaudio",
    color_muted=color_warn,
    color_unmuted=color_good,
    format="  {volume:>03}",
    format_muted="     ")


# show backlight brightness status
backlight='acpi_video0'
if os.path.exists('/sys/class/backlight/{}'.format(backlight)):
    status.register("backlight",
            backlight=backlight,
            color=color_good)

# show battery status
status.register("battery",
        full_color=color_good,
        format="  {percentage:>3.02f}%",
        alert=True,
        alert_percentage=20,
        critical_color=color_bad,
        not_present_text="",
        charging_color=color_good)

# run the thing!
status.run()
