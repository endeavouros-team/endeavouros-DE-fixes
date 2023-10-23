LXDE fixes for adding terminal to panel:

Not sure here using set_once implementation and sed to change values in default panel.
There should be an option to use a custom file at least ? 

It seems like there is no Desktop notifications running for LXDE, so in order to have some, using notification-daemon that needs to be started as it does not use `/etc/xdg/autostart`.. To start the notification server as a D-Bus service, the notification server can be launched automatically on the first call to it.
From `$HOME/.local/share/dbus-1/services/org.freedesktop.Notifications.service`

The current best solution is to put the complete panel config file into skel.

PKGBUILD / Source Repository:
https://github.com/endeavouros-team/PKGBUILDS/tree/master/eos-settings-lxde

![eos-lxde](https://raw.githubusercontent.com/endeavouros-team/endeavouros-DE-fixes/main/lxde/lxde.png)
