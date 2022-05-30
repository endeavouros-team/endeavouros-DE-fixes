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

We need to update the file if it changes somehow in the ![plasma-desktop](https://archlinux.org/packages/extra/x86_64/plasma-desktop/) package what originally ships it.. what somehow is not the best way because plasma changes files very often.. so it would cause less issue using set_once method where we can copy the file on the run fresh from installed system and use sed/patch to modify files..

This is used in this package:

https://github.com/endeavouros-team/PKGBUILDS/tree/master/endeavouros-skel-plasma-git

for testing it forst only git package exists, later it will go into a default package for installs from ISO:
https://github.com/endeavouros-team/PKGBUILDS/tree/master/endeavouros-skel-plasma (not ready)


![eos-plasma](https://raw.githubusercontent.com/endeavouros-team/endeavouros-DE-fixes/main/plasma/plasma.png)
