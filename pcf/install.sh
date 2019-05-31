#!/bin/tcsh -f

set list = ( /usr/share/fonts/misc /usr/share/fonts/X11/misc /usr/local/share/fonts/misc )
foreach f ( $list )
	if ( -d $f ) then
		set dest = $f
		break
	endif
end

if ( $?dest ) then
	install -m 0644 -o root -g root *.pcf.gz $dest
	fc-cache -rsvf
else
	echo "font directory not found"
endif
