
.SUFFIXES: .sgml .cpp .m4

MANPAGES=

FILES=baselib.sgml datadefs.sgml libc.sgml libm.sgml 

TABLES=

.cpp.sgml:
	cpp -I../../../../src/include $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a IA32 -l libc >libc.sgml
	../../../mklibspec -a IA32 -l libm >libm.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

baselib.sgml: libc.sgml libcman.sgml libm.sgml
baselib.sgml: $(MANPAGES)
