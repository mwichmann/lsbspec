
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o LSB-Core -p '/usr/bin/jade -V %use-id-as-filename%'

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

htmlspec: LSB-Core.sgml source
	rm -rf LSB-Core.junk
	-mv LSB-Core LSB-Core.junk
	$(DB2HTML) LSB-Core.sgml
	if [ -d LSB-Core.junk/CVS -a ! -d LSB-Core/CVS ];then mv LSB-Core.junk/CVS LSB-Core; fi
	rm -rf LSB-Core.junk

onehtmlspec: LSB-Core.sgml source
	$(DB2ONEHTML) LSB-Core.sgml

txtspec: LSB-Core.sgml source
	$(DB2TXT) LSB-Core.sgml

linespec: LSB-Core_lines.txt

LSB-Core_lines.txt: LSB-Core.txt
	nl -ba LSB-Core.txt > LSB-Core_lines.txt

rtfspec: LSB-Core.sgml source
	$(DB2RTF) LSB-Core.sgml

pdfspec: LSB-Core.sgml source
	$(DB2PDF) LSB-Core.sgml

psspec: LSB-Core.sgml source
	$(DB2PS) LSB-Core.sgml

index: LSB-Core.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' LSB-Core.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

LSB-Core.sgml: LSB-Core.sgml.sed ../../LSB/version
	echo `cat ../../LSB/version` >buildversion
	sed -e "s#LSBVERSION#`cat ../../LSB/version`#" <LSB-Core.sgml.sed >LSB-Core.sgml

autobuild: gensrc source
	echo `cat ../../LSB/version`-`date +"%Y%m%d"` >buildversion
	sed -e "s#LSBVERSION#`cat ../../LSB/version`-`date +"%Y%m%d"`#" <LSB-Core.sgml.sed >LSB-Core.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

