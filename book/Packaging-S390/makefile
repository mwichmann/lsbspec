
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o Packaging-S390 -p '/usr/bin/jade -V %use-id-as-filename%'

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

htmlspec: Packaging-S390.sgml source
	rm -rf Packaging-S390.junk
	-mv Packaging-S390 Packaging-S390.junk
	$(DB2HTML) Packaging-S390.sgml
	if [ -d Packaging-S390.junk/CVS -a ! -d Packaging-S390/CVS ];then mv Packaging-S390.junk/CVS Packaging-S390; fi
	rm -rf Packaging-S390.junk

onehtmlspec: Packaging-S390.sgml source
	$(DB2ONEHTML) Packaging-S390.sgml

txtspec: Packaging-S390.sgml source
	$(DB2TXT) Packaging-S390.sgml

linespec: Packaging-S390_lines.txt

Packaging-S390_lines.txt: Packaging-S390.txt
	nl -ba Packaging-S390.txt > Packaging-S390_lines.txt

rtfspec: Packaging-S390.sgml source
	$(DB2RTF) Packaging-S390.sgml

pdfspec: Packaging-S390.sgml source
	$(DB2PDF) Packaging-S390.sgml

psspec: Packaging-S390.sgml source
	$(DB2PS) Packaging-S390.sgml

index: Packaging-S390.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' Packaging-S390.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

Packaging-S390.sgml: Packaging-S390.sgml.sed ../../Packaging/version.S390
	echo `cat ../../Packaging/version.S390` >buildversion
	sed -e "s#VERSION#`cat ../../Packaging/version.S390`#" <Packaging-S390.sgml.sed >Packaging-S390.sgml

autobuild: gensrc source
	echo `cat ../../Packaging/version.S390`-`date +"%Y%m%d"` >buildversion
	sed -e "s#VERSION#`cat ../../Packaging/version.S390`-`date +"%Y%m%d"`#" <Packaging-S390.sgml.sed >Packaging-S390.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

