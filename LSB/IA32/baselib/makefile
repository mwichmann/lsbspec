
.SUFFIXES: .sgml .cpp .m4

MANPAGES= __divdi3.sgml ioperm.sgml iopl.sgml 

FILES=baselib.sgml libc.sgml libm.sgml 

TABLES=

.cpp.sgml:
	cpp -I../../../../src/include $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a IA32 -l libc >libc.sgml
	../../../mklibspec -a IA32 -l libm >libm.sgml
	../../../mklibspec -a IA32 -l libpthread >libpthread.sgml
	../../../mklibspec -a IA32 -l libdl >libdl.sgml
	../../../mklibspec -a IA32 -l libcrypt >libcrypt.sgml
	../../../mklibspec -a IA32 -c 2 -l libstdcxx | c++filt | ../../../fixc++spec >libstdcxx.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

baselib.sgml: libc.sgml libm.sgml
baselib.sgml: $(MANPAGES)
