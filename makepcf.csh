#!/bin/tcsh -f

foreach f ( *.bdf )
	set bdf = $f
	set pcf = $f:t:r
	set pcf = `echo $pcf | sed 's/-[0-9][0-9]//g'`
	bdftopcf $bdf -o pcf/$pcf.pcf
	gzip -f pcf/$pcf.pcf
end
