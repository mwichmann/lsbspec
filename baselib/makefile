
.SUFFIXES: .sgml .cpp .m4

MANPAGES=__assert_fail.sgml __xstat.sgml select.sgml
FILES=baselib.sgml libpthread.sgml datadefs.sgml libc.sgml libm.sgml \
	libdb.sgml libdl.sgml libcrypt.sgml
TABLES=

.cpp.sgml:
	cpp -I../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 $*.m4 >$@

all: $(FILES) $(TABLES)

libc.sgml:
	../mklibspec Lname=libc >libc.sgml

libm.sgml:
	../mklibspec Lname=libm >libm.sgml

libpthread.sgml:
	../mklibspec Lname=libpthread >libpthread.sgml

libdb.sgml:
	../mklibspec Lname=libdb >libdb.sgml

libdl.sgml:
	../mklibspec Lname=libdl >libdl.sgml

libcrypt.sgml:
	../mklibspec Lname=libcrypt >libcrypt.sgml

unknown.sgml:
	../mkinterfacesgmltable Sname=Unknown >unknown.sgml

clean:
	rm -f $(FILES) $(TABLES)

baselib.sgml: libc.sgml libcman.sgml datadefs.sgml libm.sgml libpthread.sgml
baselib.sgml: libdb.sgml libdl.sgml libcrypt.sgml $(MANPAGES)
# datadefs.sgml: ../../code/headers/datadefs.sgml
