#!/bin/sh
patch -u $HOME/.config/lxpanel/LXDE/panels/panel -i $HOME/lxde.patch && lxpanelctl restart
rm $HOME/.config/autostart/set_once_lxde.desktop $HOME/set_once_lxde.sh $HOME/lxde.patch
