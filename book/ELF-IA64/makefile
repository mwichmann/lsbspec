
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o ELF-IA64 -p '/usr/bin/jade -V %use-id-as-filename%'

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

htmlspec: ELF-IA64.sgml source
	rm -rf ELF-IA64.junk
	-mv ELF-IA64 ELF-IA64.junk
	$(DB2HTML) ELF-IA64.sgml
	if [ -d ELF-IA64.junk/CVS -a ! -d ELF-IA64/CVS ];then mv ELF-IA64.junk/CVS ELF-IA64; fi
	rm -rf ELF-IA64.junk

onehtmlspec: ELF-IA64.sgml source
	$(DB2ONEHTML) ELF-IA64.sgml

txtspec: ELF-IA64.sgml source
	$(DB2TXT) ELF-IA64.sgml

linespec: ELF-IA64_lines.txt

ELF-IA64_lines.txt: ELF-IA64.txt
	nl -ba ELF-IA64.txt > ELF-IA64_lines.txt

rtfspec: ELF-IA64.sgml source
	$(DB2RTF) ELF-IA64.sgml

pdfspec: ELF-IA64.sgml source
	$(DB2PDF) ELF-IA64.sgml

psspec: ELF-IA64.sgml source
	$(DB2PS) ELF-IA64.sgml

index: ELF-IA64.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' ELF-IA64.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

ELF-IA64.sgml: ELF-IA64.sgml.sed ../../ELF/version
	echo `cat ../../ELF/version` >buildversion
	sed -e "s#ELFVERSION#`cat ../../ELF/version`#" <ELF-IA64.sgml.sed >ELF-IA64.sgml

autobuild: gensrc source
	echo `cat ../../ELF/version`-`date +"%Y%m%d"` >buildversion
	sed -e "s#ELFVERSION#`cat ../../ELF/version`-`date +"%Y%m%d"`#" <ELF-IA64.sgml.sed >ELF-IA64.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

