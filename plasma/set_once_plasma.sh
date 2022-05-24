#!/bin/sh
mkdir -p $HOME/.local/share/plasma/plasmoids
cp -a /usr/share/plasma/plasmoids/org.kde.plasma.taskmanager $HOME/.local/share/plasma/plasmoids/
sed -i "s?      <default>applications:systemsettings.desktop,applications:org.kde.discover.desktop,preferred://filemanager,preferred://browser</default>?      <default>applications:systemsettings.desktop,applications:org.kde.konsole.desktop,preferred://filemanager,preferred://browser</default>?" "$HOME/.local/share/plasma/plasmoids/org.kde.plasma.taskmanager/contents/config/main.xml"
rm ~/.config/autostart/set_once_plasma.desktop ~/set_once_plasma.sh
kquitapp5 plasmashell || killall plasmashell && kstart5 plasmashell
