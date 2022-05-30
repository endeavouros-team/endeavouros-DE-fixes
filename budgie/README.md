As Budgie using dconf/gschema overrides we need to use 

`/usr/share/glib-2.0/schemas/20_endeavouros-budgie.gschema.override`  

file  instead of skel configurations to set options on theming.

We can also use a script and command to apply on first login of the user:


`gsettings set org.gnome.desktop.interface gtk-theme 'Arc-Darker'`  e.t.c 

But for first testing we take the first way.

This is used in this package for testing it first:

https://github.com/endeavouros-team/PKGBUILDS/tree/master/endeavouros-gschema-budgie-git

Later it will go into a main package used for installing from ISO:

https://github.com/endeavouros-team/PKGBUILDS/tree/master/endeavouros-gschema-budgie (not ready)

![alt text](https://raw.githubusercontent.com/endeavouros-team/endeavouros-DE-fixes/main/budgie/budgie.png "bar legende")
