As Budgie using dconf/gschema overrides we need to use 

`/usr/share/glib-2.0/schemas/20_endeavouros.gschema.override`  

file  instead of skel configurations to set options on theming.

We can also use a script and command to apply on first login of the user:


`gsettings set org.gnome.desktop.interface gtk-theme 'Arc-Darker'`  e.t.c 

But for first testing we take the first way.

