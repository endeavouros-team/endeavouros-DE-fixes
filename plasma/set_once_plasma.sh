#!/bin/sh

sleep 4 &

cat <<EOF >>$HOME/.config/plasma-org.kde.plasma.desktop-appletsrc
[Containments][2][Applets][5][Configuration][General]
launchers=applications:systemsettings.desktop,applications:org.kde.konsole.desktop?wmClass=konsole,preferred://filemanager?wmClass=dolphin,preferred://browser?wmClass=firefox
EOF

kquitapp5 plasmashell || killall plasmashell && kstart5 plasmashell &
rm ~/.config/autostart/set_once_plasma.desktop ~/set_once_plasma.sh
