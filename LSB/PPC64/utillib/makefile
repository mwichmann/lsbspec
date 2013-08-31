TOP=../../..

.SUFFIXES: .sgml .cpp .m4

FILES=utillib.sgml libz.sgml libcurses.sgml libutil.sgml
TABLES=

.m4.sgml:
	m4 -P $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a PPC64 -l libz -v `cat ../../target_version.PPC64` >libz.sgml
	../../../mklibspec -a PPC64 -l libncurses -v `cat ../../target_version.PPC64` >libcurses.sgml
	../../../mklibspec -a PPC64 -l libutil -v `cat ../../target_version.PPC64` >libutil.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


utillib.sgml:  libz.sgml libcurses.sgml libutil.sgml
