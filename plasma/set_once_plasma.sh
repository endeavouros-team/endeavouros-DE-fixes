#!/bin/sh
mkdir -p ~/.local/share/plasma/plasmoids
cp -a /usr/share/plasma/plasmoids/org.kde.plasma.taskmanager ~/.local/share/plasma/plasmoids/
sed -i "s?      <default>applications:systemsettings.desktop,applications:org.kde.discover.desktop,preferred://filemanager,preferred://browser</default>?      <default>applications:systemsettings.desktop,applications:org.kde.konsole.desktop,preferred://filemanager,preferred://browser</default>?" "~/.local/share/plasma/plasmoids/org.kde.plasma.taskmanager/contents/config/main.xml"
rm ~/.config/autostart/set_once_plasma.desktop
rm ~/set_once_plasma.sh
