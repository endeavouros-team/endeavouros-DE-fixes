#!/bin/sh
mkdir $HOME/.local/share/mate-panel/layouts
cp /usr/share/mate-panel/layouts/default.layout $HOME/.local/share/mate-panel/layouts/endeavouros.layout

cat <<EOT >> $HOME/.local/share/mate-panel/layouts/endeavouros.layout

[Object mate-terminal]
launcher-location=/usr/share/applications/mate-terminal.desktop
object-type=launcher
panel-right-stick=false
position=0
toplevel-id=top

[Object firefox]
launcher-location=/usr/share/applications/firefox.desktop
object-type=launcher
panel-right-stick=false
position=0
toplevel-id=top
EOT

dconf write /org/mate/terminal/profiles/default/use-theme-colors false

killall mate-panel && mate-panel &

rm ~/.config/autostart/set_once_mate.desktop ~/set_once_mate.sh
