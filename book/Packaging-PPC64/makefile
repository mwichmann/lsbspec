
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o Packaging-PPC64 -p '/usr/bin/jade -V %use-id-as-filename%'

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

htmlspec: Packaging-PPC64.sgml source
	rm -rf Packaging-PPC64.junk
	-mv Packaging-PPC64 Packaging-PPC64.junk
	$(DB2HTML) Packaging-PPC64.sgml
	if [ -d Packaging-PPC64.junk/CVS -a ! -d Packaging-PPC64/CVS ];then mv Packaging-PPC64.junk/CVS Packaging-PPC64; fi
	rm -rf Packaging-PPC64.junk

onehtmlspec: Packaging-PPC64.sgml source
	$(DB2ONEHTML) Packaging-PPC64.sgml

txtspec: Packaging-PPC64.sgml source
	$(DB2TXT) Packaging-PPC64.sgml

linespec: Packaging-PPC64_lines.txt

Packaging-PPC64_lines.txt: Packaging-PPC64.txt
	nl -ba Packaging-PPC64.txt > Packaging-PPC64_lines.txt

rtfspec: Packaging-PPC64.sgml source
	$(DB2RTF) Packaging-PPC64.sgml

pdfspec: Packaging-PPC64.sgml source
	$(DB2PDF) Packaging-PPC64.sgml

psspec: Packaging-PPC64.sgml source
	$(DB2PS) Packaging-PPC64.sgml

index: Packaging-PPC64.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' Packaging-PPC64.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

Packaging-PPC64.sgml: Packaging-PPC64.sgml.sed ../../Packaging/version.PPC64
	echo `cat ../../Packaging/version.PPC64` >buildversion
	sed -e "s#VERSION#`cat ../../Packaging/version.PPC64`#" <Packaging-PPC64.sgml.sed >Packaging-PPC64.sgml

autobuild: gensrc source
	echo `cat ../../Packaging/version.PPC64`-`date +"%Y%m%d"` >buildversion
	sed -e "s#VERSION#`cat ../../Packaging/version.PPC64`-`date +"%Y%m%d"`#" <Packaging-PPC64.sgml.sed >Packaging-PPC64.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

