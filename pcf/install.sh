#!/bin/tcsh -f

set dest=/usr/share/fonts/misc
if ( -d /usr/share/fonts/X11/misc ) set dest=/usr/share/fonts/X11/misc/

install --mode=0644 *.pcf.gz $dest
fc-cache -rsvf
