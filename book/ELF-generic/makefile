
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o ELF-generic -p '/usr/bin/jade -V %use-id-as-filename%'

DB2RTF=sgmltools -b rtf
#DB2RTF=docbook2rtf -d ../docbook-utils.dsl\#print

DB2PS=sgmltools -b ps
#DB2PS=docbook2ps -d ../docbook-utils.dsl\#print

DB2PDF=sgmltools -b pdf
#DB2PDF=docbook2pdf -d ../docbook-utils.dsl\#print

DB2ONEHTML=sgmltools -b onehtml
#DB2ONEHTML=docbook2html -d ../docbook-utils.dsl\#html -u -p '/usr/bin/jade -V %use-id-as-filename%'

DB2TXT=sgmltools -b txt
#DB2TXT=docbook2txt -d ../docbook-utils.dsl\#print

all:: buildspecs

buildspecs: htmlspec rtfspec txtspec onehtmlspec linespec

htmlspec: ELF-generic.sgml source
	rm -rf ELF-generic.junk
	-mv ELF-generic ELF-generic.junk
	$(DB2HTML) ELF-generic.sgml
	if [ -d ELF-generic.junk/CVS -a ! -d ELF-generic/CVS ];then mv ELF-generic.junk/CVS ELF-generic; fi
	rm -rf ELF-generic.junk

onehtmlspec: ELF-generic.sgml source
	$(DB2ONEHTML) ELF-generic.sgml

txtspec: ELF-generic.sgml source
	$(DB2TXT) ELF-generic.sgml

linespec: ELF-generic_lines.txt

ELF-generic_lines.txt: ELF-generic.txt
	nl -ba ELF-generic.txt > ELF-generic_lines.txt

rtfspec: ELF-generic.sgml source
	$(DB2RTF) ELF-generic.sgml

pdfspec: ELF-generic.sgml source
	$(DB2PDF) ELF-generic.sgml

psspec: ELF-generic.sgml source
	$(DB2PS) ELF-generic.sgml

index: ELF-generic.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' ELF-generic.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

ELF-generic.sgml: ELF-generic.sgml.sed ../../ELF/version
	echo `cat ../../ELF/version` >buildversion
	sed -e "s#ELFVERSION#`cat ../../ELF/version`#" <ELF-generic.sgml.sed >ELF-generic.sgml

autobuild: gensrc source
	echo `cat ../../ELF/version`-`date +"%Y%m%d"` >buildversion
	sed -e "s#ELFVERSION#`cat ../../ELF/version`-`date +"%Y%m%d"`#" <ELF-generic.sgml.sed >ELF-generic.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

