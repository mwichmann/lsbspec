
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o LSB-Core-PPC32 -p '/usr/bin/jade -V %use-id-as-filename%'

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

htmlspec: LSB-Core-PPC32.sgml source
	rm -rf LSB-Core-PPC32.junk
	-mv LSB-Core-PPC32 LSB-Core-PPC32.junk
	$(DB2HTML) LSB-Core-PPC32.sgml
	if [ -d LSB-Core-PPC32.junk/CVS -a ! -d LSB-Core-PPC32/CVS ];then mv LSB-Core-PPC32.junk/CVS LSB-Core-PPC32; fi
	rm -rf LSB-Core-PPC32.junk

onehtmlspec: LSB-Core-PPC32.sgml source
	$(DB2ONEHTML) LSB-Core-PPC32.sgml

txtspec: LSB-Core-PPC32.sgml source
	$(DB2TXT) LSB-Core-PPC32.sgml

linespec: LSB-Core-PPC32_lines.txt

LSB-Core-PPC32_lines.txt: LSB-Core-PPC32.txt
	nl -ba LSB-Core-PPC32.txt > LSB-Core-PPC32_lines.txt

rtfspec: LSB-Core-PPC32.sgml source
	$(DB2RTF) LSB-Core-PPC32.sgml

pdfspec: LSB-Core-PPC32.sgml source
	$(DB2PDF) LSB-Core-PPC32.sgml

psspec: LSB-Core-PPC32.sgml source
	$(DB2PS) LSB-Core-PPC32.sgml

index: LSB-Core-PPC32.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' LSB-Core-PPC32.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

LSB-Core-PPC32.sgml: LSB-Core-PPC32.sgml.sed ../../LSB/version.PPC32
	echo `cat ../../LSB/version.PPC32` >buildversion
	sed -e "s#LSBVERSION#`cat ../../LSB/version.PPC32`#" <LSB-Core-PPC32.sgml.sed >LSB-Core-PPC32.sgml

autobuild: gensrc source
	echo `cat ../../LSB/version.PPC32`-`date +"%Y%m%d"` >buildversion
	sed -e "s#LSBVERSION#`cat ../../LSB/version.PPC32`-`date +"%Y%m%d"`#" <LSB-Core-PPC32.sgml.sed >LSB-Core-PPC32.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

