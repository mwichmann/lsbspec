
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o Packaging-S390X -p '/usr/bin/jade -V %use-id-as-filename%'

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

htmlspec: Packaging-S390X.sgml source
	rm -rf Packaging-S390X.junk
	-mv Packaging-S390X Packaging-S390X.junk
	$(DB2HTML) Packaging-S390X.sgml
	if [ -d Packaging-S390X.junk/CVS -a ! -d Packaging-S390X/CVS ];then mv Packaging-S390X.junk/CVS Packaging-S390X; fi
	rm -rf Packaging-S390X.junk

onehtmlspec: Packaging-S390X.sgml source
	$(DB2ONEHTML) Packaging-S390X.sgml

txtspec: Packaging-S390X.sgml source
	$(DB2TXT) Packaging-S390X.sgml

linespec: Packaging-S390X_lines.txt

Packaging-S390X_lines.txt: Packaging-S390X.txt
	nl -ba Packaging-S390X.txt > Packaging-S390X_lines.txt

rtfspec: Packaging-S390X.sgml source
	$(DB2RTF) Packaging-S390X.sgml

pdfspec: Packaging-S390X.sgml source
	$(DB2PDF) Packaging-S390X.sgml

psspec: Packaging-S390X.sgml source
	$(DB2PS) Packaging-S390X.sgml

index: Packaging-S390X.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' Packaging-S390X.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

Packaging-S390X.sgml: Packaging-S390X.sgml.sed ../../Packaging/version.S390X
	echo `cat ../../Packaging/version.S390X` >buildversion
	sed -e "s#VERSION#`cat ../../Packaging/version.S390X`#" <Packaging-S390X.sgml.sed >Packaging-S390X.sgml

autobuild: gensrc source
	echo `cat ../../Packaging/version.S390X`-`date +"%Y%m%d"` >buildversion
	sed -e "s#VERSION#`cat ../../Packaging/version.S390X`-`date +"%Y%m%d"`#" <Packaging-S390X.sgml.sed >Packaging-S390X.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

