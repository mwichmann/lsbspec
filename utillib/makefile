
.SUFFIXES: .sgml .cpp .m4

FILES=utillib.sgml libz.sgml libcurses.sgml libresolv.sgml libutil.sgml
TABLES=

.cpp.sgml:
	cpp -I../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../mklibspec -l libz >libz.sgml
	../mklibspec -l libcurses >libcurses.sgml
	../mklibspec -l libresolv >libresolv.sgml
	../mklibspec -l libutil >libutil.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


utillib.sgml:  libz.sgml libcurses.sgml libresolv.sgml libutil.sgml
