
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o LSB-Core-S390 -p '/usr/bin/jade -V %use-id-as-filename%'

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

htmlspec: LSB-Core-S390.sgml source
	rm -rf LSB-Core-S390.junk
	-mv LSB-Core-S390 LSB-Core-S390.junk
	$(DB2HTML) LSB-Core-S390.sgml
	if [ -d LSB-Core-S390.junk/CVS -a ! -d LSB-Core-S390/CVS ];then mv LSB-Core-S390.junk/CVS LSB-Core-S390; fi
	rm -rf LSB-Core-S390.junk

onehtmlspec: LSB-Core-S390.sgml source
	$(DB2ONEHTML) LSB-Core-S390.sgml

txtspec: LSB-Core-S390.sgml source
	$(DB2TXT) LSB-Core-S390.sgml

linespec: LSB-Core-S390_lines.txt

LSB-Core-S390_lines.txt: LSB-Core-S390.txt
	nl -ba LSB-Core-S390.txt > LSB-Core-S390_lines.txt

rtfspec: LSB-Core-S390.sgml source
	$(DB2RTF) LSB-Core-S390.sgml

pdfspec: LSB-Core-S390.sgml source
	$(DB2PDF) LSB-Core-S390.sgml

psspec: LSB-Core-S390.sgml source
	$(DB2PS) LSB-Core-S390.sgml

index: LSB-Core-S390.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' LSB-Core-S390.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

LSB-Core-S390.sgml: LSB-Core-S390.sgml.sed ../../LSB/version.S390
	echo `cat ../../LSB/version.S390` >buildversion
	sed -e "s#LSBVERSION#`cat ../../LSB/version.S390`#" <LSB-Core-S390.sgml.sed >LSB-Core-S390.sgml

autobuild: gensrc source
	echo `cat ../../LSB/version.S390`-`date +"%Y%m%d"` >buildversion
	sed -e "s#LSBVERSION#`cat ../../LSB/version.S390`-`date +"%Y%m%d"`#" <LSB-Core-S390.sgml.sed >LSB-Core-S390.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

