
SUBDIRS=intro baselib package

# These commands are those found on sourceforge.net. Please create your own
# wrapper script if needed instead of changing this
DB2HTML=sgmltools -b html

DB2RTF=sgmltools -b rtf

DB2PS=sgmltools -b ps

DB2PDF=sgmltools -b pdf

DB2ONEHTML=sgmltools -b onehtml

DB2TXT=sgmltools -b txt

all:: htmlspec 

htmlspec: source
	rm -rf wip.junk
	-mv wip wip.junk
	$(DB2HTML) wip.sgml
	if [ -d wip.junk/CVS -a ! -d wip/CVS ];then mv wip.junk/CVS wip; fi
	rm -rf wip.junk

onehtmlspec: source
	$(DB2ONEHTML) wip.sgml

txtspec: source
	$(DB2TXT) wip.sgml
	nl -ba wip.txt > wip_lines.txt

rtfspec: source
	$(DB2RTF) wip.sgml

pdfspec: source
	$(DB2PDF) wip.sgml

psspec: source
	$(DB2PS) wip.sgml

source:
	sed -e "s#LSBVERSION#`date +"%Y%m%d"`#" <wip.sgml.sed >wip.sgml
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

