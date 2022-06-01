#!/bin/sh
cp /etc/xdg/lxpanel/default/panels/panel $HOME/.config/lxpanel/LXDE/panels/panel
sed -i "s?            id=gnome-terminal.desktop?            id=lxterminal.desktop?g" "$HOME/.config/lxpanel/LXDE/panels/panel"
lxpanelctl restart &
cp /etc/xdg/lxsession/LXDE/autostart $HOME/.config/lxsession/LXDE/autostart
rm $HOME/set_once_lxde.sh
