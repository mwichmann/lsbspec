
SUBDIRS=intro objfmt baselib utillib graphlib sysinit usersgroups command \
	dynlnk sgmlspec appendix

# These commands are those found on sourceforge.net. Please create your own
# wrapper script if needed instead of changing this
DB2HTML=sgmltools -b html

DB2RTF=sgmltools -b rtf

DB2PS=sgmltools -b ps

DB2PDF=sgmltools -b pdf

DB2ONEHTML=sgmltools -b onehtml

DB2TXT=sgmltools -b txt

all:: htmlspec rtfspec 

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
	nl -ba gLSB.txt > gLSB_lines.txt

rtfspec: source
	$(DB2RTF) gLSB.sgml

pdfspec: source
	$(DB2PDF) gLSB.sgml

psspec: source
	$(DB2PS) gLSB.sgml

source:
	sed -e "s#LSBVERSION#`cat ../lsbversion`#" <gLSB.sgml.sed >gLSB.sgml
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

