
SRC=lzsabi0_s390.sgml lzsabi0_zSeries.sgml

#DB2HTML=sgmltools -b html
DB2HTML=docbook2html

#DB2RTF=sgmltools -b rtf
DB2RTF=docbook2rtf

DB2PS=sgmltools -b ps
#DB2PS=docbook2ps

DB2PDF=sgmltools -b pdf
#DB2PDF=docbook2pdf

#DB2ONEHTML=sgmltools -b onehtml
DB2ONEHTML=docbook2html -u

#DB2TXT=sgmltools -b txt
DB2TXT=docbook2text

htmlspec:  lzsabi0_s390/book1.html lzsabi0_zSeries/book1.html

lzsabi0_s390/book1.html:
	$(DB2HTML) -o lzsabi0_s390 lzsabi0_s390.sgml
	ln -sf ../pics lzsabi0_s390/pics

lzsabi0_zSeries/book1.html:
	$(DB2HTML) -o lzsabi0_zSeries lzsabi0_zSeries.sgml
	ln -sf ../pics lzsabi0_zSeries/pics

all:: htmlspec onehtmlspec rtfspec pdfspec psspec 

onehtmlspec: lzsabi0_s390.html lzsabi0_zSeries.html

lzsabi0_s390.html lzsabi0_zSeries.html:
	$(DB2ONEHTML) $(basename $@).sgml

rtfspec: lzsabi0_s390.rtf lzsabi0_zSeries.rtf

lzsabi0_s390.rtf lzsabi0_zSeries.rtf: 
	$(DB2RTF) $(basename $@).sgml

pdfspec: lzsabi0_s390.pdf lzsabi0_zSeries.pdf

lzsabi0_s390.pdf lzsabi0_zSeries.pdf:
	$(DB2PDF) $(basename $@).sgml

psspec: lzsabi0_s390.ps lzsabi0_zSeries.ps

lzsabi0_s390.ps lzsabi0_zSeries.ps:
	$(DB2PS) $(basename $@).sgml

clean:
	rm -f *.html *.pdf *.ps *.rtf *.log *.dvi *.aux
	rm -rf lzsabi0_s390 lzsabi0_zSeries

lzsabi0_s390.pdf: lzsabi0_s390.sgml
lzsabi0_zSeries.pdf: lzsabi0_zSeries.sgml
lzsabi0_s390.rtf: lzsabi0_s390.sgml
lzsabi0_zSeries.rtf: lzsabi0_zSeries.sgml
lzsabi0_s390/book1.html: lzsabi0_zSeries.sgml
lzsabi0_zSeries/book1.html:lzsabi0_zSeries.sgml
lzsabi0_s390.html: lzsabi0_s390.sgml
lzsabi0_zSeries.html: lzsabi0_zSeries.sgml
