
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o LSB-Core-S390X -p '/usr/bin/jade -V %use-id-as-filename%'

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

htmlspec: LSB-Core-S390X.sgml source
	rm -rf LSB-Core-S390X.junk
	-mv LSB-Core-S390X LSB-Core-S390X.junk
	$(DB2HTML) LSB-Core-S390X.sgml
	if [ -d LSB-Core-S390X.junk/CVS -a ! -d LSB-Core-S390X/CVS ];then mv LSB-Core-S390X.junk/CVS LSB-Core-S390X; fi
	rm -rf LSB-Core-S390X.junk

onehtmlspec: LSB-Core-S390X.sgml source
	$(DB2ONEHTML) LSB-Core-S390X.sgml

txtspec: LSB-Core-S390X.sgml source
	$(DB2TXT) LSB-Core-S390X.sgml

linespec: LSB-Core-S390X_lines.txt

LSB-Core-S390X_lines.txt: LSB-Core-S390X.txt
	nl -ba LSB-Core-S390X.txt > LSB-Core-S390X_lines.txt

rtfspec: LSB-Core-S390X.sgml source
	$(DB2RTF) LSB-Core-S390X.sgml

pdfspec: LSB-Core-S390X.sgml source
	$(DB2PDF) LSB-Core-S390X.sgml

psspec: LSB-Core-S390X.sgml source
	$(DB2PS) LSB-Core-S390X.sgml

index: LSB-Core-S390X.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' LSB-Core-S390X.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

LSB-Core-S390X.sgml: LSB-Core-S390X.sgml.sed ../../LSB/version.S390X
	echo `cat ../../LSB/version.S390X` >buildversion
	sed -e "s#LSBVERSION#`cat ../../LSB/version.S390X`#" <LSB-Core-S390X.sgml.sed >LSB-Core-S390X.sgml

autobuild: gensrc source
	echo `cat ../../LSB/version.S390X`-`date +"%Y%m%d"` >buildversion
	sed -e "s#LSBVERSION#`cat ../../LSB/version.S390X`-`date +"%Y%m%d"`#" <LSB-Core-S390X.sgml.sed >LSB-Core-S390X.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

