
SUBDIRS=intro baselib package execenv

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
	rm -rf erratta.junk
	-mv erratta erratta.junk
	$(DB2HTML) erratta.sgml
	if [ -d erratta.junk/CVS -a ! -d erratta/CVS ];then mv erratta.junk/CVS erratta; fi
	rm -rf erratta.junk

onehtmlspec: source
	$(DB2ONEHTML) erratta.sgml

txtspec: source
	$(DB2TXT) erratta.sgml
	nl -ba erratta.txt > erratta_lines.txt

rtfspec: source
	$(DB2RTF) erratta.sgml

pdfspec: source
	$(DB2PDF) erratta.sgml

psspec: source
	$(DB2PS) erratta.sgml

source:
	sed -e "s#LSBVERSION#`date +"%Y%m%d"`#" <erratta.sgml.sed >erratta.sgml
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

