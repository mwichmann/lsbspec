
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o LSB-CXX-generic -p '/usr/bin/jade -V %use-id-as-filename%'

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

htmlspec: LSB-CXX-generic.sgml source
	rm -rf LSB-CXX-generic.junk
	-mv LSB-CXX-generic LSB-CXX-generic.junk
	$(DB2HTML) LSB-CXX-generic.sgml
	if [ -d LSB-CXX-generic.junk/CVS -a ! -d LSB-CXX-generic/CVS ];then mv LSB-CXX-generic.junk/CVS LSB-CXX-generic; fi
	rm -rf LSB-CXX-generic.junk

onehtmlspec: LSB-CXX-generic.sgml source
	$(DB2ONEHTML) LSB-CXX-generic.sgml

txtspec: LSB-CXX-generic.sgml source
	$(DB2TXT) LSB-CXX-generic.sgml

linespec: LSB-CXX-generic_lines.txt

LSB-CXX-generic_lines.txt: LSB-CXX-generic.txt
	nl -ba LSB-CXX-generic.txt > LSB-CXX-generic_lines.txt

rtfspec: LSB-CXX-generic.sgml source
	$(DB2RTF) LSB-CXX-generic.sgml

pdfspec: LSB-CXX-generic.sgml source
	$(DB2PDF) LSB-CXX-generic.sgml

psspec: LSB-CXX-generic.sgml source
	$(DB2PS) LSB-CXX-generic.sgml

index: LSB-CXX-generic.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' LSB-CXX-generic.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

LSB-CXX-generic.sgml: LSB-CXX-generic.sgml.sed ../../LSB/version
	echo `cat ../../LSB/version` >buildversion
	sed -e "s#LSBVERSION#`cat ../../LSB/version`#" <LSB-CXX-generic.sgml.sed >LSB-CXX-generic.sgml

autobuild: gensrc source
	echo `cat ../../LSB/version`-`date +"%Y%m%d"` >buildversion
	sed -e "s#LSBVERSION#`cat ../../LSB/version`-`date +"%Y%m%d"`#" <LSB-CXX-generic.sgml.sed >LSB-CXX-generic.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

