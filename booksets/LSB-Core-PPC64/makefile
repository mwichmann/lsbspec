
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o LSB-Core-PPC64 -p '/usr/bin/jade -V %use-id-as-filename%'

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

htmlspec: LSB-Core-PPC64.sgml source
	rm -rf LSB-Core-PPC64.junk
	-mv LSB-Core-PPC64 LSB-Core-PPC64.junk
	$(DB2HTML) LSB-Core-PPC64.sgml
	if [ -d LSB-Core-PPC64.junk/CVS -a ! -d LSB-Core-PPC64/CVS ];then mv LSB-Core-PPC64.junk/CVS LSB-Core-PPC64; fi
	rm -rf LSB-Core-PPC64.junk

onehtmlspec: LSB-Core-PPC64.sgml source
	$(DB2ONEHTML) LSB-Core-PPC64.sgml

txtspec: LSB-Core-PPC64.sgml source
	$(DB2TXT) LSB-Core-PPC64.sgml

linespec: LSB-Core-PPC64_lines.txt

LSB-Core-PPC64_lines.txt: LSB-Core-PPC64.txt
	nl -ba LSB-Core-PPC64.txt > LSB-Core-PPC64_lines.txt

rtfspec: LSB-Core-PPC64.sgml source
	$(DB2RTF) LSB-Core-PPC64.sgml

pdfspec: LSB-Core-PPC64.sgml source
	$(DB2PDF) LSB-Core-PPC64.sgml

psspec: LSB-Core-PPC64.sgml source
	$(DB2PS) LSB-Core-PPC64.sgml

index: LSB-Core-PPC64.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' LSB-Core-PPC64.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

LSB-Core-PPC64.sgml: LSB-Core-PPC64.sgml.sed ../../LSB/version.PPC64
	echo `cat ../../LSB/version.PPC64` >buildversion
	sed -e "s#LSBVERSION#`cat ../../LSB/version.PPC64`#" <LSB-Core-PPC64.sgml.sed >LSB-Core-PPC64.sgml

autobuild: gensrc source
	echo `cat ../../LSB/version.PPC64`-`date +"%Y%m%d"` >buildversion
	sed -e "s#LSBVERSION#`cat ../../LSB/version.PPC64`-`date +"%Y%m%d"`#" <LSB-Core-PPC64.sgml.sed >LSB-Core-PPC64.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

