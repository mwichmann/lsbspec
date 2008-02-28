
.SUFFIXES: .sgml .cpp .m4

FILES=utillib.sgml libz.sgml libcurses.sgml libutil.sgml
TABLES=

.cpp.sgml:
	cpp -I../../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -P $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a S390X -l libz -v `cat ../../target_version.S390X` >libz.sgml
	../../../mklibspec -a S390X -l libncurses -v `cat ../../target_version.S390X` >libcurses.sgml
	../../../mklibspec -a S390X -l libutil -v `cat ../../target_version.S390X` >libutil.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


utillib.sgml:  libz.sgml libcurses.sgml libutil.sgml
