
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o Packaging-IA64 -p '/usr/bin/jade -V %use-id-as-filename%'

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

htmlspec: Packaging-IA64.sgml source
	rm -rf Packaging-IA64.junk
	-mv Packaging-IA64 Packaging-IA64.junk
	$(DB2HTML) Packaging-IA64.sgml
	if [ -d Packaging-IA64.junk/CVS -a ! -d Packaging-IA64/CVS ];then mv Packaging-IA64.junk/CVS Packaging-IA64; fi
	rm -rf Packaging-IA64.junk

onehtmlspec: Packaging-IA64.sgml source
	$(DB2ONEHTML) Packaging-IA64.sgml

txtspec: Packaging-IA64.sgml source
	$(DB2TXT) Packaging-IA64.sgml

linespec: Packaging-IA64_lines.txt

Packaging-IA64_lines.txt: Packaging-IA64.txt
	nl -ba Packaging-IA64.txt > Packaging-IA64_lines.txt

rtfspec: Packaging-IA64.sgml source
	$(DB2RTF) Packaging-IA64.sgml

pdfspec: Packaging-IA64.sgml source
	$(DB2PDF) Packaging-IA64.sgml

psspec: Packaging-IA64.sgml source
	$(DB2PS) Packaging-IA64.sgml

index: Packaging-IA64.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' Packaging-IA64.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

Packaging-IA64.sgml: Packaging-IA64.sgml.sed ../../Packaging/version.IA64
	echo `cat ../../Packaging/version.IA64` >buildversion
	sed -e "s#VERSION#`cat ../../Packaging/version.IA64`#" <Packaging-IA64.sgml.sed >Packaging-IA64.sgml

autobuild: gensrc source
	echo `cat ../../Packaging/version.IA64`-`date +"%Y%m%d"` >buildversion
	sed -e "s#VERSION#`cat ../../Packaging/version.IA64`-`date +"%Y%m%d"`#" <Packaging-IA64.sgml.sed >Packaging-IA64.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

