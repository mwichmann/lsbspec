
SUBDIRS=intro lowlevel objfmt baselib dynlnk appendix

# These commands are those found on sourceforge.net. Please create your own
# wrapper script if needed instead of changing this
DB2HTML=sgmltools -b html

DB2RTF=sgmltools -b rtf

DB2PS=sgmltools -b ps

DB2PDF=sgmltools -b pdf

all:: htmlspec rtfspec 

htmlspec: source
	rm -rf spec.junk
	-mv spec spec.junk
	$(DB2HTML) spec.sgml
	if [ -d spec.junk/CVS -a ! -d spec/CVS ];then mv spec.junk/CVS spec; fi
	rm -rf spec.junk

rtfspec: source
	$(DB2RTF) spec.sgml

pdfspec: source
	$(DB2PDF) spec.sgml

psspec: source
	$(DB2PS) spec.sgml

source:
	sed -e "s#LSBVERSION#`cat ../../lsbversion.IA32`#" <spec.sgml.sed >spec.sgml
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

