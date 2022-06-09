#!/bin/sh


kwriteconfig5 --file $HOME/.config/plasma-org.kde.plasma.desktop-appletsrc --group "Containments" --group "2" --group "Applets" --group "5" --group "Configuration" --group "General" --key "launchers" "applications:systemsettings.desktop,applications:org.kde.konsole.desktop?wmClass=konsole,preferred://filemanager?wmClass=dolphin,preferred://browser?wmClass=firefox"

kquitapp5 plasmashell || killall plasmashell && kstart5 plasmashell &
rm ~/.config/autostart/set_once_plasma.desktop ~/set_once_plasma.sh
