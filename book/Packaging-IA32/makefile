
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o Packaging-IA32 -p '/usr/bin/jade -V %use-id-as-filename%'

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

htmlspec: Packaging-IA32.sgml source
	rm -rf Packaging-IA32.junk
	-mv Packaging-IA32 Packaging-IA32.junk
	$(DB2HTML) Packaging-IA32.sgml
	if [ -d Packaging-IA32.junk/CVS -a ! -d Packaging-IA32/CVS ];then mv Packaging-IA32.junk/CVS Packaging-IA32; fi
	rm -rf Packaging-IA32.junk

onehtmlspec: Packaging-IA32.sgml source
	$(DB2ONEHTML) Packaging-IA32.sgml

txtspec: Packaging-IA32.sgml source
	$(DB2TXT) Packaging-IA32.sgml

linespec: Packaging-IA32_lines.txt

Packaging-IA32_lines.txt: Packaging-IA32.txt
	nl -ba Packaging-IA32.txt > Packaging-IA32_lines.txt

rtfspec: Packaging-IA32.sgml source
	$(DB2RTF) Packaging-IA32.sgml

pdfspec: Packaging-IA32.sgml source
	$(DB2PDF) Packaging-IA32.sgml

psspec: Packaging-IA32.sgml source
	$(DB2PS) Packaging-IA32.sgml

index: Packaging-IA32.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' Packaging-IA32.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

Packaging-IA32.sgml: Packaging-IA32.sgml.sed ../../Packaging/version.IA32
	echo `cat ../../Packaging/version.IA32` >buildversion
	sed -e "s#VERSION#`cat ../../Packaging/version.IA32`#" <Packaging-IA32.sgml.sed >Packaging-IA32.sgml

autobuild: gensrc source
	echo `cat ../../Packaging/version.IA32`-`date +"%Y%m%d"` >buildversion
	sed -e "s#VERSION#`cat ../../Packaging/version.IA32`-`date +"%Y%m%d"`#" <Packaging-IA32.sgml.sed >Packaging-IA32.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

