
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o LSB-Embedded -p '/usr/bin/jade -V %use-id-as-filename%'

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

htmlspec: LSB-Embedded.sgml source
	rm -rf LSB-Embedded.junk
	-mv LSB-Embedded LSB-Embedded.junk
	$(DB2HTML) LSB-Embedded.sgml
	if [ -d LSB-Embedded.junk/CVS -a ! -d LSB-Embedded/CVS ];then mv LSB-Embedded.junk/CVS LSB-Embedded; fi
	rm -rf LSB-Embedded.junk

onehtmlspec: LSB-Embedded.sgml source
	$(DB2ONEHTML) LSB-Embedded.sgml

txtspec: LSB-Embedded.sgml source
	$(DB2TXT) LSB-Embedded.sgml

linespec: LSB-Embedded_lines.txt

LSB-Embedded_lines.txt: LSB-Embedded.txt
	nl -ba LSB-Embedded.txt > LSB-Embedded_lines.txt

rtfspec: LSB-Embedded.sgml source
	$(DB2RTF) LSB-Embedded.sgml

pdfspec: LSB-Embedded.sgml source
	$(DB2PDF) LSB-Embedded.sgml

psspec: LSB-Embedded.sgml source
	$(DB2PS) LSB-Embedded.sgml

index: LSB-Embedded.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' LSB-Embedded.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

LSB-Embedded.sgml: LSB-Embedded.sgml.sed ../../lsbversion
	echo `cat ../../lsbversion` >buildversion
	sed -e "s#LSBVERSION#`cat ../../lsbversion`#" <LSB-Embedded.sgml.sed >LSB-Embedded.sgml

autobuild: gensrc source
	echo `cat ../../lsbversion`-`date +"%Y%m%d"` >buildversion
	sed -e "s#LSBVERSION#`cat ../../lsbversion`-`date +"%Y%m%d"`#" <LSB-Embedded.sgml.sed >LSB-Embedded.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

