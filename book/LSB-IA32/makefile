
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o LSB-IA32 -p '/usr/bin/jade -V %use-id-as-filename%'

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

htmlspec: LSB-IA32.sgml source
	rm -rf LSB-IA32.junk
	-mv LSB-IA32 LSB-IA32.junk
	$(DB2HTML) LSB-IA32.sgml
	if [ -d LSB-IA32.junk/CVS -a ! -d LSB-IA32/CVS ];then mv LSB-IA32.junk/CVS LSB-IA32; fi
	rm -rf LSB-IA32.junk

onehtmlspec: LSB-IA32.sgml source
	$(DB2ONEHTML) LSB-IA32.sgml

txtspec: LSB-IA32.sgml source
	$(DB2TXT) LSB-IA32.sgml

linespec: LSB-IA32_lines.txt

LSB-IA32_lines.txt: LSB-IA32.txt
	nl -ba LSB-IA32.txt > LSB-IA32_lines.txt

rtfspec: LSB-IA32.sgml source
	$(DB2RTF) LSB-IA32.sgml

pdfspec: LSB-IA32.sgml source
	$(DB2PDF) LSB-IA32.sgml

psspec: LSB-IA32.sgml source
	$(DB2PS) LSB-IA32.sgml

index: LSB-IA32.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' LSB-IA32.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

LSB-IA32.sgml: LSB-IA32.sgml.sed ../../LSB/version
	echo `cat ../../LSB/version` >buildversion
	sed -e "s#LSBVERSION#`cat ../../LSB/version`#" <LSB-IA32.sgml.sed >LSB-IA32.sgml

autobuild: gensrc source
	echo `cat ../../LSB/version`-`date +"%Y%m%d"` >buildversion
	sed -e "s#LSBVERSION#`cat ../../LSB/version`-`date +"%Y%m%d"`#" <LSB-IA32.sgml.sed >LSB-IA32.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

