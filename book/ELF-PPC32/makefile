
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o ELF-PPC32 -p '/usr/bin/jade -V %use-id-as-filename%'

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

htmlspec: ELF-PPC32.sgml source
	rm -rf ELF-PPC32.junk
	-mv ELF-PPC32 ELF-PPC32.junk
	$(DB2HTML) ELF-PPC32.sgml
	if [ -d ELF-PPC32.junk/CVS -a ! -d ELF-PPC32/CVS ];then mv ELF-PPC32.junk/CVS ELF-PPC32; fi
	rm -rf ELF-PPC32.junk

onehtmlspec: ELF-PPC32.sgml source
	$(DB2ONEHTML) ELF-PPC32.sgml

txtspec: ELF-PPC32.sgml source
	$(DB2TXT) ELF-PPC32.sgml

linespec: ELF-PPC32_lines.txt

ELF-PPC32_lines.txt: ELF-PPC32.txt
	nl -ba ELF-PPC32.txt > ELF-PPC32_lines.txt

rtfspec: ELF-PPC32.sgml source
	$(DB2RTF) ELF-PPC32.sgml

pdfspec: ELF-PPC32.sgml source
	$(DB2PDF) ELF-PPC32.sgml

psspec: ELF-PPC32.sgml source
	$(DB2PS) ELF-PPC32.sgml

index: ELF-PPC32.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' ELF-PPC32.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

ELF-PPC32.sgml: ELF-PPC32.sgml.sed ../../ELF/version
	echo `cat ../../ELF/version` >buildversion
	sed -e "s#LSBVERSION#`cat ../../ELF/version`#" <ELF-PPC32.sgml.sed >ELF-PPC32.sgml

autobuild: gensrc source
	echo `cat ../../ELF/version`-`date +"%Y%m%d"` >buildversion
	sed -e "s#LSBVERSION#`cat ../../ELF/version`-`date +"%Y%m%d"`#" <ELF-PPC32.sgml.sed >ELF-PPC32.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

