#!/bin/tcsh -f

set dest=/usr/share/fonts/misc
if ( -d /usr/share/fonts/X11/misc ) set dest=/usr/share/fonts/X11/misc/

install -m 0644 -o root -g root *.pcf.gz $dest
fc-cache -rsvf
