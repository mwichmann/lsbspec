
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o Desktop -p '/usr/bin/jade -V %use-id-as-filename%'

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

htmlspec: Desktop.sgml source
	rm -rf Desktop.junk
	-mv Desktop Desktop.junk
	$(DB2HTML) Desktop.sgml
	if [ -d Desktop.junk/CVS -a ! -d Desktop/CVS ];then mv Desktop.junk/CVS Desktop; fi
	rm -rf Desktop.junk

onehtmlspec: Desktop.sgml source
	$(DB2ONEHTML) Desktop.sgml

txtspec: Desktop.sgml source
	$(DB2TXT) Desktop.sgml

linespec: Desktop_lines.txt

Desktop_lines.txt: Desktop.txt
	nl -ba Desktop.txt > Desktop_lines.txt

rtfspec: Desktop.sgml source
	$(DB2RTF) Desktop.sgml

pdfspec: Desktop.sgml source
	$(DB2PDF) Desktop.sgml

psspec: Desktop.sgml source
	$(DB2PS) Desktop.sgml

index: Desktop.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' Desktop.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

Desktop.sgml: Desktop.sgml.sed ../../Desktop/version
	echo `cat ../../Desktop/version` >buildversion
	sed -e "s#VERSION#`cat ../../Desktop/version`#" <Desktop.sgml.sed >Desktop.sgml

autobuild: gensrc source
	echo `cat ../../Desktop/version`-`date +"%Y%m%d"` >buildversion
	sed -e "s#VERSION#`cat ../../Desktop/version`-`date +"%Y%m%d"`#" <Desktop.sgml.sed >Desktop.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

