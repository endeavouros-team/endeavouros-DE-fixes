lxde fixes for adding terminal to panel:

Not sure here using set_once implementation and sed to change values in default panel.
There should be an option to use custom file at least ? 

It seems there is nop Desktop notifications running for LXDE so to have some using notification-daemon that need sto be started as it does not use `/etc/xdg/autostart`.. to start the notification server as a D-Bus service, the notification server can be launched automatically on the first call to it..
From `$HOME/.local/share/dbus-1/services/org.freedesktop.Notifications.service`

The current best Solution is to put complete panel config file into skel.. 

PKGBUILD:
https://github.com/endeavouros-team/PKGBUILDS/tree/master/eos-settings-lxde

![eos-lxde](https://raw.githubusercontent.com/endeavouros-team/endeavouros-DE-fixes/main/lxde/lxde.png)
