TOP=../../..

.SUFFIXES: .sgml .cpp .m4

FILES=utillib.sgml libz.sgml libcurses.sgml libutil.sgml
TABLES=

.m4.sgml:
	m4 -P $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a S390 -l libz -v `cat ../../target_version.S390` >libz.sgml
	../../../mklibspec -a S390 -l libncurses -v `cat ../../target_version.S390` >libcurses.sgml
	../../../mklibspec -a S390 -l libutil -v `cat ../../target_version.S390` >libutil.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


utillib.sgml:  libz.sgml libcurses.sgml libutil.sgml
