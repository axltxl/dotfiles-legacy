################################
# i3pystatus configuration file.
################################
from i3pystatus import Status
from i3pystatus.weather import weathercom
import os
import zenfig

# Hints that are applied to all i3pystatus modules
hints = {
    "markup": "pango",
    "separator": True,
}

# Get status bar
status = Status(
        standalone=True,
        logfile='{}/.i3/i3pystatus.log'.format(os.getenv("HOME"))
        )

# Get variables from zenfig
zenfig_vars = zenfig.get_user_vars()

######################################################
# color palette
######################################################
color_good = "#{}".format(zenfig_vars['color_base05'])
color_warn = "#{}".format(zenfig_vars['color_base09'])
color_bad  = "#{}".format(zenfig_vars['color_base08'])


# Display current weather
status.register('weather',
    colorize=True,
    hints=hints,
    backend=weathercom.Weathercom(
        location_code='DAXX0009:1:DA', # Lovely CPH :)
        units='metric'
    ),
)

# Display date and time
status.register("clock", format="%d/%m/%Y %H:%M", hints=hints)

# Shows the average load of the last minute and the last 5 minutes
# (the default value for format is used)
status.register("cpu_freq", format="{avgg} GHz")
status.register("load", format=" {avg1:>5}", color=color_good, critical_color=color_bad, hints=hints)

# Show the memory usage
status.register("mem",
        format=" {avail_mem:>4} GiB",
        divisor=1073741824,
        hints=hints,
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
net_iface = zenfig_vars['net_iface']
net_iface_wireless = zenfig_vars['net_iface_wireless']
if net_iface_wireless:
    net_fmt="  {quality:>3}%"
else:
    net_fmt="  {kbs:^06} kB/s"

status.register("network",
    interface=net_iface,
    dynamic_color=False,
    format_up=net_fmt,
    hints=hints,
    color_down=color_bad,
    start_color=color_good,
    end_color=color_bad)

# Shows pulseaudio default sink volume
#
# Note: requires libpulseaudio from PyPI
status.register("pulseaudio",
    color_muted=color_warn,
    color_unmuted=color_good,
    hints=hints,
    format=" {volume:>3}%",
    format_muted="     ")

# show battery status
status.register("battery",
        full_color=color_good,
        format=" {percentage:>3.02f}%",
        alert=True,
        alert_percentage=20,
        hints=hints,
        critical_color=color_bad,
        not_present_text="",
        charging_color=color_good)

# run the thing!
status.run()
