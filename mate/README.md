Mate take overrides but uses also defaults under `/usr/share/mate-*`  

**Currently** we ochange terminal config to not use default theming color scheme so we can use `dconf write` command:

`dconf write /org/mate/terminal/profiles/default/use-theme-colors false`

We run this using set_once method.

To get Terminal and Firefox ixon favorites on the panel it needs some file handling..
Copy `/usr/share/mate-panel/layouts/default.layout` to `/usr/share/mate-panel/layouts/endeavouros.layout`
add the dropin for the 2 fav icons (endeavouros.layout.dropin) and copy a minimal gschema.override at its place:
`/usr/share/glib-2.0/schemas/99_endeavouros-mate.gschema.override`

Used in this package:

https://github.com/endeavouros-team/PKGBUILDS/tree/master/endeavouros-skel-mate-git

Will get changed to this for real uasage on the installer:

https://github.com/endeavouros-team/PKGBUILDS/tree/master/endeavouros-skel-mate


![eos-mate](https://raw.githubusercontent.com/endeavouros-team/endeavouros-DE-fixes/main/mate/mate.png)
