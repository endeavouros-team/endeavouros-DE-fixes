Mate uses dconf schema also.. but ;) seems it do not take overrides ?
I test to create a users dconf file and put this in skel seems to get used as it should at least to fix terminal to be readable by setting icon and gtk theme.

`/etc/skel/.config/dconf/user`

..

To be changed as soon as someone hints me on a better way or i do find something better .. 

Used in this package:

https://github.com/endeavouros-team/PKGBUILDS/tree/master/endeavouros-skel-mate-git

Will get changed to this for real uasage on the installer:

https://github.com/endeavouros-team/PKGBUILDS/tree/master/endeavouros-skel-mate


Because user file will include a lot from the default settings we do not need it will be better to use:

`dconf load / < user.bak` to load only needed settings.. i do not know of a way to create a custom user file thaz only includes the settings we want to change?

