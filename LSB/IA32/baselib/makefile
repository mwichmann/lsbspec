
.SUFFIXES: .sgml .cpp .m4

MANPAGES=

FILES=baselib.sgml libpthread.sgml datadefs.sgml libc.sgml libm.sgml \
	libdb.sgml libdl.sgml libcrypt.sgml
TABLES=

.cpp.sgml:
	cpp -I../../../../src/include $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a IA32 -l libc >libc.sgml
	../../../mklibspec -a IA32 -l libm >libm.sgml
	../../../mklibspec -a IA32 -l libpthread >libpthread.sgml
	../../../mklibspec -a IA32 -l libdb >libdb.sgml
	../../../mklibspec -a IA32 -l libdl >libdl.sgml
	../../../mklibspec -a IA32 -l libcrypt >libcrypt.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

baselib.sgml: libc.sgml libcman.sgml datadefs.sgml libm.sgml libpthread.sgml
baselib.sgml: libdb.sgml libdl.sgml libcrypt.sgml $(MANPAGES)
# datadefs.sgml: ../../src/include/datadefs.sgml
