
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o ELF-AMD64 -p '/usr/bin/jade -V %use-id-as-filename%'

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

htmlspec: ELF-AMD64.sgml source
	rm -rf ELF-AMD64.junk
	-mv ELF-AMD64 ELF-AMD64.junk
	$(DB2HTML) ELF-AMD64.sgml
	if [ -d ELF-AMD64.junk/CVS -a ! -d ELF-AMD64/CVS ];then mv ELF-AMD64.junk/CVS ELF-AMD64; fi
	rm -rf ELF-AMD64.junk

onehtmlspec: ELF-AMD64.sgml source
	$(DB2ONEHTML) ELF-AMD64.sgml

txtspec: ELF-AMD64.sgml source
	$(DB2TXT) ELF-AMD64.sgml

linespec: ELF-AMD64_lines.txt

ELF-AMD64_lines.txt: ELF-AMD64.txt
	nl -ba ELF-AMD64.txt > ELF-AMD64_lines.txt

rtfspec: ELF-AMD64.sgml source
	$(DB2RTF) ELF-AMD64.sgml

pdfspec: ELF-AMD64.sgml source
	$(DB2PDF) ELF-AMD64.sgml

psspec: ELF-AMD64.sgml source
	$(DB2PS) ELF-AMD64.sgml

index: ELF-AMD64.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' ELF-AMD64.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

ELF-AMD64.sgml: ELF-AMD64.sgml.sed ../../ELF/version
	echo `cat ../../ELF/version` >buildversion
	sed -e "s#LSBVERSION#`cat ../../ELF/version`#" <ELF-AMD64.sgml.sed >ELF-AMD64.sgml

autobuild: gensrc source
	echo `cat ../../ELF/version`-`date +"%Y%m%d"` >buildversion
	sed -e "s#LSBVERSION#`cat ../../ELF/version`-`date +"%Y%m%d"`#" <ELF-AMD64.sgml.sed >ELF-AMD64.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

