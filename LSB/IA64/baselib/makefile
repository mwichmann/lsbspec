
.SUFFIXES: .sgml .cpp .m4

MANPAGES=

FILES=baselib.sgml datadefs.sgml libc.sgml libm.sgml 

TABLES=

.cpp.sgml:
	cpp -I../../../../src/include $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uindex -Uformat  $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a IA64 -l libc >libc.sgml
	../../../mklibspec -a IA64 -l libm >libm.sgml
	../../../mklibspec -a IA64 -l libpthread >libpthread.sgml
	../../../mklibspec -a IA64 -l libdl >libdl.sgml
	../../../mklibspec -a IA64 -l libcrypt >libcrypt.sgml
	../../../mklibspec -a IA64 -c 2 -l libstdcxx | c++filt | ../../../fixc++spec >libstdcxx.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

baselib.sgml: libc.sgml libm.sgml
baselib.sgml: $(MANPAGES)
