
.SUFFIXES: .sgml .cpp .m4

FILES=utillib.sgml libz.sgml libcurses.sgml libresolv.sgml libutil.sgml
TABLES=

.cpp.sgml:
	cpp -I../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 $*.m4 >$@

all: $(FILES) $(TABLES)

libz.sgml:
	../mklibspec Lname=libz >libz.sgml

libcurses.sgml:
	../mklibspec Lname=libcurses >libcurses.sgml

libresolv.sgml:
	../mklibspec Lname=libresolv >libresolv.sgml

libutil.sgml:
	../mklibspec Lname=libutil >libutil.sgml

clean:
	rm -f $(FILES) $(TABLES)

utillib.sgml:  libz.sgml libcurses.sgml libresolv.sgml libutil.sgml
