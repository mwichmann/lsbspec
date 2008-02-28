
.SUFFIXES: .sgml .cpp .m4

FILES=utillib.sgml libz.sgml libcurses.sgml libutil.sgml
TABLES=

.cpp.sgml:
	cpp -I../../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -P $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a x86-64 -l libz -v `cat ../../target_version.AMD64` >libz.sgml
	../../../mklibspec -a x86-64 -l libncurses -v `cat ../../target_version.AMD64` >libcurses.sgml
	../../../mklibspec -a x86-64 -l libutil -v `cat ../../target_version.AMD64` >libutil.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


utillib.sgml:  libz.sgml libcurses.sgml libutil.sgml
