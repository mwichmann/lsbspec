
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o ELF-PPC64 -p '/usr/bin/jade -V %use-id-as-filename%'

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

htmlspec: ELF-PPC64.sgml source
	rm -rf ELF-PPC64.junk
	-mv ELF-PPC64 ELF-PPC64.junk
	$(DB2HTML) ELF-PPC64.sgml
	if [ -d ELF-PPC64.junk/CVS -a ! -d ELF-PPC64/CVS ];then mv ELF-PPC64.junk/CVS ELF-PPC64; fi
	rm -rf ELF-PPC64.junk

onehtmlspec: ELF-PPC64.sgml source
	$(DB2ONEHTML) ELF-PPC64.sgml

txtspec: ELF-PPC64.sgml source
	$(DB2TXT) ELF-PPC64.sgml

linespec: ELF-PPC64_lines.txt

ELF-PPC64_lines.txt: ELF-PPC64.txt
	nl -ba ELF-PPC64.txt > ELF-PPC64_lines.txt

rtfspec: ELF-PPC64.sgml source
	$(DB2RTF) ELF-PPC64.sgml

pdfspec: ELF-PPC64.sgml source
	$(DB2PDF) ELF-PPC64.sgml

psspec: ELF-PPC64.sgml source
	$(DB2PS) ELF-PPC64.sgml

index: ELF-PPC64.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' ELF-PPC64.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

ELF-PPC64.sgml: ELF-PPC64.sgml.sed ../../ELF/version
	echo `cat ../../ELF/version` >buildversion
	sed -e "s#ELFVERSION#`cat ../../ELF/version`#" <ELF-PPC64.sgml.sed >ELF-PPC64.sgml

autobuild: gensrc source
	echo `cat ../../ELF/version`-`date +"%Y%m%d"` >buildversion
	sed -e "s#ELFVERSION#`cat ../../ELF/version`-`date +"%Y%m%d"`#" <ELF-PPC64.sgml.sed >ELF-PPC64.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

