This is the way we use for dbus setting in Xfce4 and i3 currently to run commands as user after first login on fresh installs:

On a DE use autostart implementation and a desktop file under `~/.config/autostart/set_once_DE.desktop`that runs the command script `~/set_once_DE.sh`

Can be used standalone or together with using configs other than this on `/etc/skel/`
