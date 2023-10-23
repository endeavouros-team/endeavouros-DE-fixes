Mate take overrides but also uses defaults under `/usr/share/mate-*`.

**Currently** we change the terminal config to not use default theming color scheme, so we can use `dconf write` command:

`dconf write /org/mate/terminal/profiles/default/use-theme-colors false`

We run this using set_once method.

To get Terminal and Firefox icon favorites on the panel, it needs some file handling.
We use a layout file for the panel: `/usr/share/mate-panel/layouts/endeavouros.layout`
and copy a minimal gschema.override at its place:
`/usr/share/glib-2.0/schemas/99_endeavouros-mate.gschema.override`,
to make this layout default for the panel.

PKGBUILD / Source Repository:
https://github.com/endeavouros-team/PKGBUILDS/tree/master/eos-settings-mate


![eos-mate](https://raw.githubusercontent.com/endeavouros-team/endeavouros-DE-fixes/main/mate/mate.png)
