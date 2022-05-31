#!/bin/sh
echo "[quicklaunch]" >> "$HOME/.config/lxqt/panel.conf"
echo "alignment=Left" >> "$HOME/.config/lxqt/panel.conf"
echo "apps\1\desktop=/usr/share/applications/qterminal.desktop" >> "$HOME/.config/lxqt/panel.conf"
echo "apps\2\desktop=/usr/share/applications/pcmanfm-qt.desktop" >> "$HOME/.config/lxqt/panel.conf"
echo "apps\3\desktop=/usr/share/applications/firefox.desktop" >> "$HOME/.config/lxqt/panel.conf"
echo "apps\size=3" >> "$HOME/.config/lxqt/panel.conf"
echo "type=quicklaunch" >> "$HOME/.config/lxqt/panel.conf"

killall lxqt-panel && lxqt-panel &
rm $HOME/.config/autostart/set_once_lxde.desktop $HOME/set_once_lxde.sh
