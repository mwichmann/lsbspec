
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o Packaging-PPC32 -p '/usr/bin/jade -V %use-id-as-filename%'

DB2RTF=sgmltools -b rtf
#DB2RTF=docbook2rtf -d ../docbook-utils.dsl\#print

DB2PS=sgmltools -b ps
#DB2PS=docbook2ps -d ../docbook-utils.dsl\#print

#DB2PDF=sgmltools -b pdf
DB2PDF=docbook2pdf -d ../docbook-utils.dsl\#print

DB2ONEHTML=sgmltools -b onehtml
#DB2ONEHTML=docbook2html -d ../docbook-utils.dsl\#html -u -p '/usr/bin/jade -V %use-id-as-filename%'

DB2TXT=sgmltools -b txt
#DB2TXT=docbook2txt -d ../docbook-utils.dsl\#print

all:: buildspecs

buildspecs: htmlspec rtfspec txtspec onehtmlspec linespec

htmlspec: Packaging-PPC32.sgml source
	rm -rf Packaging-PPC32.junk
	-mv Packaging-PPC32 Packaging-PPC32.junk
	$(DB2HTML) Packaging-PPC32.sgml
	if [ -d Packaging-PPC32.junk/CVS -a ! -d Packaging-PPC32/CVS ];then mv Packaging-PPC32.junk/CVS Packaging-PPC32; fi
	rm -rf Packaging-PPC32.junk

onehtmlspec: Packaging-PPC32.sgml source
	$(DB2ONEHTML) Packaging-PPC32.sgml

txtspec: Packaging-PPC32.sgml source
	$(DB2TXT) Packaging-PPC32.sgml

linespec: Packaging-PPC32_lines.txt

Packaging-PPC32_lines.txt: Packaging-PPC32.txt
	nl -ba Packaging-PPC32.txt > Packaging-PPC32_lines.txt

rtfspec: Packaging-PPC32.sgml source
	$(DB2RTF) Packaging-PPC32.sgml

pdfspec: Packaging-PPC32.sgml source
	$(DB2PDF) Packaging-PPC32.sgml

psspec: Packaging-PPC32.sgml source
	$(DB2PS) Packaging-PPC32.sgml

index: Packaging-PPC32.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' Packaging-PPC32.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

Packaging-PPC32.sgml: Packaging-PPC32.sgml.sed ../../Packaging/version.PPC32
	echo `cat ../../Packaging/version.PPC32` >buildversion
	sed -e "s#VERSION#`cat ../../Packaging/version.PPC32`#" <Packaging-PPC32.sgml.sed >Packaging-PPC32.sgml

autobuild: gensrc source
	echo `cat ../../Packaging/version.PPC32`-`date +"%Y%m%d"` >buildversion
	sed -e "s#VERSION#`cat ../../Packaging/version.PPC32`-`date +"%Y%m%d"`#" <Packaging-PPC32.sgml.sed >Packaging-PPC32.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

