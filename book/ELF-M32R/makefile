
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o ELF-M32R -p '/usr/bin/jade -V %use-id-as-filename%'

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

htmlspec: ELF-M32R.sgml source
	rm -rf ELF-M32R.junk
	-mv ELF-M32R ELF-M32R.junk
	$(DB2HTML) ELF-M32R.sgml
	if [ -d ELF-M32R.junk/CVS -a ! -d ELF-M32R/CVS ];then mv ELF-M32R.junk/CVS ELF-M32R; fi
	rm -rf ELF-M32R.junk

onehtmlspec: ELF-M32R.sgml source
	$(DB2ONEHTML) ELF-M32R.sgml

txtspec: ELF-M32R.sgml source
	$(DB2TXT) ELF-M32R.sgml

linespec: ELF-M32R_lines.txt

ELF-M32R_lines.txt: ELF-M32R.txt
	nl -ba ELF-M32R.txt > ELF-M32R_lines.txt

rtfspec: ELF-M32R.sgml source
	$(DB2RTF) ELF-M32R.sgml

pdfspec: ELF-M32R.sgml source
	$(DB2PDF) ELF-M32R.sgml

psspec: ELF-M32R.sgml source
	$(DB2PS) ELF-M32R.sgml

index: ELF-M32R.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' ELF-M32R.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

ELF-M32R.sgml: ELF-M32R.sgml.sed ../../ELF/version
	echo `cat ../../ELF/version` >buildversion
	sed -e "s#ELFVERSION#`cat ../../ELF/version`#" <ELF-M32R.sgml.sed >ELF-M32R.sgml

autobuild: gensrc source
	echo `cat ../../ELF/version`-`date +"%Y%m%d"` >buildversion
	sed -e "s#ELFVERSION#`cat ../../ELF/version`-`date +"%Y%m%d"`#" <ELF-M32R.sgml.sed >ELF-M32R.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

