
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o LSB-generic -p '/usr/bin/jade -V %use-id-as-filename%'

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

htmlspec: LSB-generic.sgml source
	rm -rf LSB-generic.junk
	-mv LSB-generic LSB-generic.junk
	$(DB2HTML) LSB-generic.sgml
	if [ -d LSB-generic.junk/CVS -a ! -d LSB-generic/CVS ];then mv LSB-generic.junk/CVS LSB-generic; fi
	rm -rf LSB-generic.junk

onehtmlspec: LSB-generic.sgml source
	$(DB2ONEHTML) LSB-generic.sgml

txtspec: LSB-generic.sgml source
	$(DB2TXT) LSB-generic.sgml

linespec: LSB-generic_lines.txt

LSB-generic_lines.txt: LSB-generic.txt
	nl -ba LSB-generic.txt > LSB-generic_lines.txt

rtfspec: LSB-generic.sgml source
	$(DB2RTF) LSB-generic.sgml

pdfspec: LSB-generic.sgml source
	$(DB2PDF) LSB-generic.sgml

psspec: LSB-generic.sgml source
	$(DB2PS) LSB-generic.sgml

index: LSB-generic.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' LSB-generic.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

LSB-generic.sgml: LSB-generic.sgml.sed ../../LSB/version
	echo `cat ../../LSB/version` >buildversion
	sed -e "s#LSBVERSION#`cat ../../LSB/version`#" <LSB-generic.sgml.sed >LSB-generic.sgml

autobuild: gensrc source
	echo `cat ../../LSB/version`-`date +"%Y%m%d"` >buildversion
	sed -e "s#LSBVERSION#`cat ../../LSB/version`-`date +"%Y%m%d"`#" <LSB-generic.sgml.sed >LSB-generic.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

