
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o Packaging-AMD64 -p '/usr/bin/jade -V %use-id-as-filename%'

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

htmlspec: Packaging-AMD64.sgml source
	rm -rf Packaging-AMD64.junk
	-mv Packaging-AMD64 Packaging-AMD64.junk
	$(DB2HTML) Packaging-AMD64.sgml
	if [ -d Packaging-AMD64.junk/CVS -a ! -d Packaging-AMD64/CVS ];then mv Packaging-AMD64.junk/CVS Packaging-AMD64; fi
	rm -rf Packaging-AMD64.junk

onehtmlspec: Packaging-AMD64.sgml source
	$(DB2ONEHTML) Packaging-AMD64.sgml

txtspec: Packaging-AMD64.sgml source
	$(DB2TXT) Packaging-AMD64.sgml

linespec: Packaging-AMD64_lines.txt

Packaging-AMD64_lines.txt: Packaging-AMD64.txt
	nl -ba Packaging-AMD64.txt > Packaging-AMD64_lines.txt

rtfspec: Packaging-AMD64.sgml source
	$(DB2RTF) Packaging-AMD64.sgml

pdfspec: Packaging-AMD64.sgml source
	$(DB2PDF) Packaging-AMD64.sgml

psspec: Packaging-AMD64.sgml source
	$(DB2PS) Packaging-AMD64.sgml

index: Packaging-AMD64.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' Packaging-AMD64.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

Packaging-AMD64.sgml: Packaging-AMD64.sgml.sed ../../Packaging/version.AMD64
	echo `cat ../../Packaging/version.AMD64` >buildversion
	sed -e "s#VERSION#`cat ../../Packaging/version.AMD64`#" <Packaging-AMD64.sgml.sed >Packaging-AMD64.sgml

autobuild: gensrc source
	echo `cat ../../Packaging/version.AMD64`-`date +"%Y%m%d"` >buildversion
	sed -e "s#VERSION#`cat ../../Packaging/version.AMD64`-`date +"%Y%m%d"`#" <Packaging-AMD64.sgml.sed >Packaging-AMD64.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

