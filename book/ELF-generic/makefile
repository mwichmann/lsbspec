
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o gELF -p '/usr/bin/jade -V %use-id-as-filename%'

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

htmlspec: gELF.sgml source
	rm -rf gELF.junk
	-mv gELF gELF.junk
	$(DB2HTML) gELF.sgml
	if [ -d gELF.junk/CVS -a ! -d gELF/CVS ];then mv gELF.junk/CVS gELF; fi
	rm -rf gELF.junk

onehtmlspec: gELF.sgml source
	$(DB2ONEHTML) gELF.sgml

txtspec: gELF.sgml source
	$(DB2TXT) gELF.sgml

linespec: gELF_lines.txt

gELF_lines.txt: gELF.txt
	nl -ba gELF.txt > gELF_lines.txt

rtfspec: gELF.sgml source
	$(DB2RTF) gELF.sgml

pdfspec: gELF.sgml source
	$(DB2PDF) gELF.sgml

psspec: gELF.sgml source
	$(DB2PS) gELF.sgml

index: gELF.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' gELF.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

gELF.sgml: gELF.sgml.sed ../../ELF/version
	echo `cat ../../ELF/version` >buildversion
	sed -e "s#LSBVERSION#`cat ../../ELF/version`#" <gELF.sgml.sed >gELF.sgml

autobuild: gensrc source
	echo `cat ../../ELF/version`-`date +"%Y%m%d"` >buildversion
	sed -e "s#LSBVERSION#`cat ../../ELF/version`-`date +"%Y%m%d"`#" <gELF.sgml.sed >gELF.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

