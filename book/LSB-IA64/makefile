
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o LSB-IA64 -p '/usr/bin/jade -V %use-id-as-filename%'

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

htmlspec: LSB-IA64.sgml source
	rm -rf LSB-IA64.junk
	-mv LSB-IA64 LSB-IA64.junk
	$(DB2HTML) LSB-IA64.sgml
	if [ -d LSB-IA64.junk/CVS -a ! -d LSB-IA64/CVS ];then mv LSB-IA64.junk/CVS LSB-IA64; fi
	rm -rf LSB-IA64.junk

onehtmlspec: LSB-IA64.sgml source
	$(DB2ONEHTML) LSB-IA64.sgml

txtspec: LSB-IA64.sgml source
	$(DB2TXT) LSB-IA64.sgml

linespec: LSB-IA64_lines.txt

LSB-IA64_lines.txt: LSB-IA64.txt
	nl -ba LSB-IA64.txt > LSB-IA64_lines.txt

rtfspec: LSB-IA64.sgml source
	$(DB2RTF) LSB-IA64.sgml

pdfspec: LSB-IA64.sgml source
	$(DB2PDF) LSB-IA64.sgml

psspec: LSB-IA64.sgml source
	$(DB2PS) LSB-IA64.sgml

index: LSB-IA64.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' LSB-IA64.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

LSB-IA64.sgml: LSB-IA64.sgml.sed ../../LSB/version
	echo `cat ../../LSB/version` >buildversion
	sed -e "s#LSBVERSION#`cat ../../LSB/version`#" <LSB-IA64.sgml.sed >LSB-IA64.sgml

autobuild: gensrc source
	echo `cat ../../LSB/version`-`date +"%Y%m%d"` >buildversion
	sed -e "s#LSBVERSION#`cat ../../LSB/version`-`date +"%Y%m%d"`#" <LSB-IA64.sgml.sed >LSB-IA64.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

