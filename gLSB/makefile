
SUBDIRS=intro objfmt baselib utillib graphlib execenv \
	sysinit usersgroups command \
	dynlnk package sgmlspec appendix

# These commands are those found on sourceforge.net. Please create your own
# wrapper script if needed instead of changing this

DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o gLSB -p '/usr/bin/jade -V %use-id-as-filename%'

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

htmlspec: gLSB.sgml source
	rm -rf gLSB.junk
	-mv gLSB gLSB.junk
	$(DB2HTML) gLSB.sgml
	if [ -d gLSB.junk/CVS -a ! -d gLSB/CVS ];then mv gLSB.junk/CVS gLSB; fi
	rm -rf gLSB.junk

onehtmlspec: gLSB.sgml source
	$(DB2ONEHTML) gLSB.sgml

txtspec: gLSB.sgml source
	$(DB2TXT) gLSB.sgml

linespec: gLSB_lines.txt

gLSB_lines.txt: gLSB.txt
	nl -ba gLSB.txt > gLSB_lines.txt

rtfspec: gLSB.sgml source
	$(DB2RTF) gLSB.sgml

pdfspec: gLSB.sgml source
	$(DB2PDF) gLSB.sgml

psspec: gLSB.sgml source
	$(DB2PS) gLSB.sgml

index: gLSB.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' gLSB.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

gLSB.sgml: gLSB.sgml.sed ../lsbversion
	echo `cat ../lsbversion` >buildversion
	sed -e "s#LSBVERSION#`cat ../lsbversion`#" <gLSB.sgml.sed >gLSB.sgml

autobuild: gensrc source
	echo `cat ../lsbversion`-`date +"%Y%m%d"` >buildversion
	sed -e "s#LSBVERSION#`cat ../lsbversion`-`date +"%Y%m%d"`#" <gLSB.sgml.sed >gLSB.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

