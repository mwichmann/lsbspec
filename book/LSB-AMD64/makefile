
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o LSB-AMD64 -p '/usr/bin/jade -V %use-id-as-filename%'

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

htmlspec: LSB-AMD64.sgml source
	rm -rf LSB-AMD64.junk
	-mv LSB-AMD64 LSB-AMD64.junk
	$(DB2HTML) LSB-AMD64.sgml
	if [ -d LSB-AMD64.junk/CVS -a ! -d LSB-AMD64/CVS ];then mv LSB-AMD64.junk/CVS LSB-AMD64; fi
	rm -rf LSB-AMD64.junk

onehtmlspec: LSB-AMD64.sgml source
	$(DB2ONEHTML) LSB-AMD64.sgml

txtspec: LSB-AMD64.sgml source
	$(DB2TXT) LSB-AMD64.sgml

linespec: LSB-AMD64.txt

LSB-AMD64.txt: LSB-AMD64.txt
	nl -ba LSB-AMD64.txt > LSB-AMD64.txt

rtfspec: LSB-AMD64.sgml source
	$(DB2RTF) LSB-AMD64.sgml

pdfspec: LSB-AMD64.sgml source
	$(DB2PDF) LSB-AMD64.sgml

psspec: LSB-AMD64.sgml source
	$(DB2PS) LSB-AMD64.sgml

index: LSB-AMD64.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' LSB-AMD64.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

LSB-AMD64.sgml: LSB-AMD64.sgml.sed ../../LSB/version
	echo `cat ../../LSB/version` >buildversion
	sed -e "s#LSBVERSION#`cat ../../LSB/version`#" <LSB-AMD64.sgml.sed >LSB-AMD64.sgml

autobuild: gensrc source
	echo `cat ../../LSB/version`-`date +"%Y%m%d"` >buildversion
	sed -e "s#LSBVERSION#`cat ../../LSB/version`-`date +"%Y%m%d"`#" <LSB-AMD64.sgml.sed >LSB-AMD64.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

