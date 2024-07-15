Gnome using dconf/gschema overrides we need to use 

`/usr/share/glib-2.0/schemas/20_endeavouros-gnome.gschema.override`
and we implement a fix for dark and light mode where it would not show a wallpaper when changing between modes.

Adding override to replace archlogo with EndeavourOS one on GDM screen:
`/usr/share/glib-2.0/schemas/zz_endeavouros.org.gnome.login-screen.gschema.override`

```
[org.gnome.login-screen]
logo='/usr/share/pixmaps/endeavouros-logo-text-dark.svg'
```

PKGBUILD / Source
https://github.com/endeavouros-team/PKGBUILDS/blob/master/eos-settings-gnome

![eos-gnome](https://raw.githubusercontent.com/endeavouros-team/endeavouros-DE-fixes/main/gnome/gnome.png)

