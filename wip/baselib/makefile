
.SUFFIXES: .sgml .cpp .m4

MANPAGES=

FILES=baselib.sgml libstdcxx.sgml
TABLES=

.m4.sgml:
	m4 -Uindex -Uformat -Usubstr $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../mklibspec -a All -c 2 -l libstdcxx | c++filt | ../../fixc++spec >libstdcxx.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

baselib.sgml: baselib.m4 libstdcxx.sgml
