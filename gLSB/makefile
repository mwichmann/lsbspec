
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

all:: htmlspec rtfspec txtspec onehtmlspec linespec

htmlspec: source
	rm -rf gLSB.junk
	-mv gLSB gLSB.junk
	$(DB2HTML) gLSB.sgml
	if [ -d gLSB.junk/CVS -a ! -d gLSB/CVS ];then mv gLSB.junk/CVS gLSB; fi
	rm -rf gLSB.junk

onehtmlspec: source
	$(DB2ONEHTML) gLSB.sgml

txtspec: source
	$(DB2TXT) gLSB.sgml

linespec: gLSB_lines.txt

gLSB_lines.txt: gLSB.txt
	nl -ba gLSB.txt > gLSB_lines.txt

rtfspec: source
	$(DB2RTF) gLSB.sgml

pdfspec: source
	$(DB2PDF) gLSB.sgml

psspec: source
	$(DB2PS) gLSB.sgml

index: source
	collateindex.pl -N -o index.sgml
	docbook2html -d ../docbook-utils.dsl\#html -o gLSB -p '/usr/bin/jade -V %use-id-as-filename% -V html-index' gLSB.sgml
	collateindex.pl -o index.sgml gLSB/HTML.index

source:
	sed -e "s#LSBVERSION#`cat ../lsbversion`#" <gLSB.sgml.sed >gLSB.sgml
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

