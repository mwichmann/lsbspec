
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o ELF-S390X -p '/usr/bin/jade -V %use-id-as-filename%'

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

htmlspec: ELF-S390X.sgml source
	rm -rf ELF-S390X.junk
	-mv ELF-S390X ELF-S390X.junk
	$(DB2HTML) ELF-S390X.sgml
	if [ -d ELF-S390X.junk/CVS -a ! -d ELF-S390X/CVS ];then mv ELF-S390X.junk/CVS ELF-S390X; fi
	rm -rf ELF-S390X.junk

onehtmlspec: ELF-S390X.sgml source
	$(DB2ONEHTML) ELF-S390X.sgml

txtspec: ELF-S390X.sgml source
	$(DB2TXT) ELF-S390X.sgml

linespec: ELF-S390X_lines.txt

ELF-S390X_lines.txt: ELF-S390X.txt
	nl -ba ELF-S390X.txt > ELF-S390X_lines.txt

rtfspec: ELF-S390X.sgml source
	$(DB2RTF) ELF-S390X.sgml

pdfspec: ELF-S390X.sgml source
	$(DB2PDF) ELF-S390X.sgml

psspec: ELF-S390X.sgml source
	$(DB2PS) ELF-S390X.sgml

index: ELF-S390X.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' ELF-S390X.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

ELF-S390X.sgml: ELF-S390X.sgml.sed ../../ELF/version
	echo `cat ../../ELF/version` >buildversion
	sed -e "s#ELFVERSION#`cat ../../ELF/version`#" <ELF-S390X.sgml.sed >ELF-S390X.sgml

autobuild: gensrc source
	echo `cat ../../ELF/version`-`date +"%Y%m%d"` >buildversion
	sed -e "s#ELFVERSION#`cat ../../ELF/version`-`date +"%Y%m%d"`#" <ELF-S390X.sgml.sed >ELF-S390X.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

