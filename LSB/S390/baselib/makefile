
.SUFFIXES: .sgml .cpp .m4

MANPAGES=

FILES=baselib.sgml datadefs.sgml libc.sgml libm.sgml libpthread.sgml libdl.sgml libcrypt.sgml

TABLES=

.cpp.sgml:
	cpp -I../../../../src/include $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uindex -Uformat  $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a S390 -l libc >libc.sgml
	../../../mklibspec -a S390 -l libm >libm.sgml
	../../../mklibspec -a S390 -l libpthread >libpthread.sgml
	../../../mklibspec -a S390 -l libdl >libdl.sgml
	../../../mklibspec -a S390 -l libcrypt >libcrypt.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

baselib.sgml: libc.sgml libm.sgml
baselib.sgml: $(MANPAGES)
