
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o ELF-S390 -p '/usr/bin/jade -V %use-id-as-filename%'

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

htmlspec: ELF-S390.sgml source
	rm -rf ELF-S390.junk
	-mv ELF-S390 ELF-S390.junk
	$(DB2HTML) ELF-S390.sgml
	if [ -d ELF-S390.junk/CVS -a ! -d ELF-S390/CVS ];then mv ELF-S390.junk/CVS ELF-S390; fi
	rm -rf ELF-S390.junk

onehtmlspec: ELF-S390.sgml source
	$(DB2ONEHTML) ELF-S390.sgml

txtspec: ELF-S390.sgml source
	$(DB2TXT) ELF-S390.sgml

linespec: ELF-S390_lines.txt

ELF-S390_lines.txt: ELF-S390.txt
	nl -ba ELF-S390.txt > ELF-S390_lines.txt

rtfspec: ELF-S390.sgml source
	$(DB2RTF) ELF-S390.sgml

pdfspec: ELF-S390.sgml source
	$(DB2PDF) ELF-S390.sgml

psspec: ELF-S390.sgml source
	$(DB2PS) ELF-S390.sgml

index: ELF-S390.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' ELF-S390.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

ELF-S390.sgml: ELF-S390.sgml.sed ../../ELF/version
	echo `cat ../../ELF/version` >buildversion
	sed -e "s#LSBVERSION#`cat ../../ELF/version`#" <ELF-S390.sgml.sed >ELF-S390.sgml

autobuild: gensrc source
	echo `cat ../../ELF/version`-`date +"%Y%m%d"` >buildversion
	sed -e "s#LSBVERSION#`cat ../../ELF/version`-`date +"%Y%m%d"`#" <ELF-S390.sgml.sed >ELF-S390.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

