Currently no solution.
(help needed)

Using the kwriteconfig5 command to add setting should work because it should not interfere with dynamic creations and stuff and instead should get merged with them .. 
Needs testing this again.. 

And dynamic filecreation is messing it up also.. ID will change already if you have dual display setup and our welcome app is adding wallpaper.. . ... 

```
kwriteconfig5 --file $HOME/.config/plasma-org.kde.plasma.desktop-appletsrc --group "Containments" --group "2" --group "Applets" --group "5" --group "Configuration" --group "General" --key "launchers" "applications:systemsettings.desktop,applications:org.kde.konsole.desktop?wmClass=konsole,preferred://filemanager?wmClass=dolphin,preferred://browser?wmClass=firefox"

```

---

New test using `$HOME/.config/plasma-org.kde.plasma.desktop-appletsrc`
and adding 

```
[Containments][2][Applets][5][Configuration][General]
launchers=applications:systemsettings.desktop,applications:org.kde.konsole.desktop?wmClass=konsole,preferred://filemanager?wmClass=dolphin,preferred://browser?wmClass=firefox

```

This is used in this package:

https://github.com/endeavouros-team/PKGBUILDS/tree/master/endeavouros-skel-plasma-git

for testing it forst only git package exists, later it will go into a default package for installs from ISO:
https://github.com/endeavouros-team/PKGBUILDS/tree/master/endeavouros-skel-plasma (not ready)


![eos-plasma](https://raw.githubusercontent.com/endeavouros-team/endeavouros-DE-fixes/main/plasma/plasma.png)


---

first test was using this here but as it partly bypass  dynamic generation of files under plasma we can not really use it:

copy `/usr/share/plasma/plasmoids/org.kde.plasma.taskmanager` to
`/etc/skel/.local/share/plasma/plasmoids/org.kde.plasma.taskmanager`
and change:

`/etc/skel/.local/share/plasma/plasmoids/org.kde.plasma.taskmanager/contents/config/main.xml`

```
<entry name="launchers" type="StringList">
      <label>The list of launcher tasks on the widget. Usually .desktop file or executable URLs. Special URLs such as preferred://browser that expand to default applications are supported.</label>
      <default>applications:systemsettings.desktop,applications:org.kde.konsole.desktop,preferred://filemanager,preferred://browser</default>
      </entry>
```

from 

`org.kde.discover.desktop`

to

`org.kde.konsole.desktop`

to not show corrupted discover icon.

We need to update the file if it changes somehow in the plasma-desktop package: https://archlinux.org/packages/extra/x86_64/plasma-desktop what originally ships it.. what somehow is not the best way because plasma changes files very often.. so it would cause less issue using set_once method where we can copy the file on the run fresh from installed system and use sed/patch to modify files..


set_once script ?
```
#!/bin/sh
mkdir -p $HOME/.local/share/plasma/plasmoids
cp -a /usr/share/plasma/plasmoids/org.kde.plasma.taskmanager $HOME/.local/share/plasma/plasmoids/
sed -i "s?      <default>applications:systemsettings.desktop,applications:org.kde.discover.desktop,preferred://filemanager,preferred://browser</default>?      <default>applications:systemsettings.desktop,applications:org.kde.konsole.desktop,preferred://filemanager,preferred://browser</default>?" "$HOME/.local/share/plasma/plasmoids/org.kde.plasma.taskmanager/contents/config/main.xml"
kquitapp5 plasmashell || killall plasmashell && kstart5 plasmashell
rm ~/.config/autostart/set_once_plasma.desktop ~/set_once_plasma.sh`
```
