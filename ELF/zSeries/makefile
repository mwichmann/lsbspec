
SRC=lzsabi0_s390.sgml lzsabi0_zSeries.sgml

DB2HTML=sgmltools -b html

DB2RTF=sgmltools -b rtf

DB2PS=sgmltools -b ps

DB2PDF=sgmltools -b pdf

DB2ONEHTML=sgmltools -b onehtml

DB2TXT=sgmltools -b txt

htmlspec:  s390.html zSeries.html

s390.html zSeries.html:
	$(DB2HTML) lzsabi0_$(basename $@).sgml

all:: htmlspec rtfspec txtspec onehtmlspec

onehtmlspec: lzsabi0_s390.html lzsabi0_zSeries.html

lzsabi0_s390.html lzsabi0_zSeries.html:
	DB2ONEHTML=sgmltools -b onehtml $@

rtfspec: lzsabi0_s390.rtf lzsabi0_zSeries.rtf

lzsabi0_s390.rtf lzsabi0_zSeries.rtf: 
	$(DB2RTF) $@

pdfspec: lzsabi0_s390.pdf lzsabi0_zSeries.pdf

lzsabi0_s390.pdf lzsabi0_zSeries.pdf:
	$(DB2PDF) $@

psspec: lzsabi0_s390.ps lzsabi0_zSeries.ps

lzsabi0_s390.ps lzsabi0_zSeries.ps:
	$(DB2PS) $@

