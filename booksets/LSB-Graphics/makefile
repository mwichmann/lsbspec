
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o LSB-Graphics -p '/usr/bin/jade -V %use-id-as-filename%'

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

htmlspec: LSB-Graphics.sgml source
	rm -rf LSB-Graphics.junk
	-mv LSB-Graphics LSB-Graphics.junk
	$(DB2HTML) LSB-Graphics.sgml
	if [ -d LSB-Graphics.junk/CVS -a ! -d LSB-Graphics/CVS ];then mv LSB-Graphics.junk/CVS LSB-Graphics; fi
	rm -rf LSB-Graphics.junk

onehtmlspec: LSB-Graphics.sgml source
	$(DB2ONEHTML) LSB-Graphics.sgml

txtspec: LSB-Graphics.sgml source
	$(DB2TXT) LSB-Graphics.sgml

linespec: LSB-Graphics_lines.txt

LSB-Graphics_lines.txt: LSB-Graphics.txt
	nl -ba LSB-Graphics.txt > LSB-Graphics_lines.txt

rtfspec: LSB-Graphics.sgml source
	$(DB2RTF) LSB-Graphics.sgml

pdfspec: LSB-Graphics.sgml source
	$(DB2PDF) LSB-Graphics.sgml

psspec: LSB-Graphics.sgml source
	$(DB2PS) LSB-Graphics.sgml

index: LSB-Graphics.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' LSB-Graphics.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

LSB-Graphics.sgml: LSB-Graphics.sgml.sed ../../LSB/version
	echo `cat ../../LSB/version` >buildversion
	sed -e "s#LSBVERSION#`cat ../../LSB/version`#" <LSB-Graphics.sgml.sed >LSB-Graphics.sgml

autobuild: gensrc source
	echo `cat ../../LSB/version`-`date +"%Y%m%d"` >buildversion
	sed -e "s#LSBVERSION#`cat ../../LSB/version`-`date +"%Y%m%d"`#" <LSB-Graphics.sgml.sed >LSB-Graphics.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

