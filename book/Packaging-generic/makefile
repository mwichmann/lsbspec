
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o Packaging -p '/usr/bin/jade -V %use-id-as-filename%'

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

htmlspec: Packaging.sgml source
	rm -rf Packaging.junk
	-mv Packaging Packaging.junk
	$(DB2HTML) Packaging.sgml
	if [ -d Packaging.junk/CVS -a ! -d Packaging/CVS ];then mv Packaging.junk/CVS Packaging; fi
	rm -rf Packaging.junk

onehtmlspec: Packaging.sgml source
	$(DB2ONEHTML) Packaging.sgml

txtspec: Packaging.sgml source
	$(DB2TXT) Packaging.sgml

linespec: Packaging_lines.txt

Packaging_lines.txt: Packaging.txt
	nl -ba Packaging.txt > Packaging_lines.txt

rtfspec: Packaging.sgml source
	$(DB2RTF) Packaging.sgml

pdfspec: Packaging.sgml source
	$(DB2PDF) Packaging.sgml

psspec: Packaging.sgml source
	$(DB2PS) Packaging.sgml

index: Packaging.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' Packaging.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

Packaging.sgml: Packaging.sgml.sed ../../lsbversion
	echo `cat ../../lsbversion` >buildversion
	sed -e "s#LSBVERSION#`cat ../../lsbversion`#" <Packaging.sgml.sed >Packaging.sgml

autobuild: gensrc source
	echo `cat ../../lsbversion`-`date +"%Y%m%d"` >buildversion
	sed -e "s#LSBVERSION#`cat ../../lsbversion`-`date +"%Y%m%d"`#" <Packaging.sgml.sed >Packaging.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

