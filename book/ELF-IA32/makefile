
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o ELF-IA32 -p '/usr/bin/jade -V %use-id-as-filename%'

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

htmlspec: ELF-IA32.sgml source
	rm -rf ELF-IA32.junk
	-mv ELF-IA32 ELF-IA32.junk
	$(DB2HTML) ELF-IA32.sgml
	if [ -d ELF-IA32.junk/CVS -a ! -d ELF-IA32/CVS ];then mv ELF-IA32.junk/CVS ELF-IA32; fi
	rm -rf ELF-IA32.junk

onehtmlspec: ELF-IA32.sgml source
	$(DB2ONEHTML) ELF-IA32.sgml

txtspec: ELF-IA32.sgml source
	$(DB2TXT) ELF-IA32.sgml

linespec: ELF-IA32_lines.txt

ELF-IA32_lines.txt: ELF-IA32.txt
	nl -ba ELF-IA32.txt > ELF-IA32_lines.txt

rtfspec: ELF-IA32.sgml source
	$(DB2RTF) ELF-IA32.sgml

pdfspec: ELF-IA32.sgml source
	$(DB2PDF) ELF-IA32.sgml

psspec: ELF-IA32.sgml source
	$(DB2PS) ELF-IA32.sgml

index: ELF-IA32.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' ELF-IA32.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

ELF-IA32.sgml: ELF-IA32.sgml.sed ../../ELF/version
	echo `cat ../../ELF/version` >buildversion
	sed -e "s#LSBVERSION#`cat ../../ELF/version`#" <ELF-IA32.sgml.sed >ELF-IA32.sgml

autobuild: gensrc source
	echo `cat ../../ELF/version`-`date +"%Y%m%d"` >buildversion
	sed -e "s#LSBVERSION#`cat ../../ELF/version`-`date +"%Y%m%d"`#" <ELF-IA32.sgml.sed >ELF-IA32.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

