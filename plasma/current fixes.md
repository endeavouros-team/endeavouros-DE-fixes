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

to not show corrupted discover icon
