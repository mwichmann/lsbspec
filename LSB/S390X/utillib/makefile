
.SUFFIXES: .sgml .cpp .m4

FILES=utillib.sgml libz.sgml libcurses.sgml libutil.sgml
TABLES=

.cpp.sgml:
	cpp -I../../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a S390X -l libz >libz.sgml
	../../../mklibspec -a S390X -l libncurses >libcurses.sgml
	../../../mklibspec -a S390X -l libutil >libutil.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


utillib.sgml:  libz.sgml libcurses.sgml libutil.sgml
