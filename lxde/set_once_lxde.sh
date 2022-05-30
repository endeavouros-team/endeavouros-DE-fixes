#!/bin/sh
cp /etc/xdg/lxpanel/default/panels/panel $HOME/.config/lxpanel/LXDE/panels/panel
patch -u $HOME/.config/lxpanel/LXDE/panels/panel -i $HOME/lxde.patch && lxpanelctl restart
cp /etc/xdg/lxsession/LXDE/autostart $HOME/.config/lxsession/LXDE/autostart
rm $HOME/.config/autostart/set_once_lxde.desktop $HOME/set_once_lxde.sh $HOME/lxde.patch
