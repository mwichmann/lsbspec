
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
	rm -rf errata.junk
	-mv errata errata.junk
	$(DB2HTML) errata.sgml
	if [ -d errata.junk/CVS -a ! -d errata/CVS ];then mv errata.junk/CVS errata; fi
	rm -rf errata.junk

onehtmlspec: source
	$(DB2ONEHTML) errata.sgml

txtspec: source
	$(DB2TXT) errata.sgml
	nl -ba errata.txt > errata_lines.txt

rtfspec: source
	$(DB2RTF) errata.sgml

pdfspec: source
	$(DB2PDF) errata.sgml

psspec: source
	$(DB2PS) errata.sgml

source:
	sed -e "s#LSBVERSION#`date +"%Y%m%d"`#" <errata.sgml.sed >errata.sgml
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

