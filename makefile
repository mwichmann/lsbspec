HTML=

TABLES = baselib/libsysansi.sgml baselib/libsyspsoxi.sgml

SUBDIRS=intro objfmt baselib utillib graphlib sysinit usersgroups command \
	dynlnk sgmlspec

# These commands are those found on sourceforge.net. Please create your own
# wrapper script if needed instead of changing this
DB2HTML=sgmltools -b html

DB2RTF=sgmltools -b rtf

DB2PS=sgmltools -b ps

all:: htmlspec rtfspec

htmlspec: source
	rm -rf spec.junk
	-mv spec spec.junk
	$(DB2HTML) spec.sgml
	if [ -d spec.junk/CVS -a ! -d spec/CVS ];then mv spec.junk/CVS spec; fi
# I don't see an images directory in CVS, nor do the files in spec/*.html
# seem to be looking for any images.
#	cp images/*.gif spec

rtfspec: source
	$(DB2RTF) spec.sgml

psspec: source
	$(DB2PS) spec.sgml

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

html: $(HTML)

clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done
	rm -f $(HTML)

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done
	rm -f $(HTML)

