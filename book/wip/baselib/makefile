
.SUFFIXES: .sgml .cpp .m4

MANPAGES=

FILES=baselib.sgml libstdcxx.sgml libpam.sgml libgcc_s.sgml
TABLES=

.m4.sgml:
	m4 -Uindex -Uformat -Usubstr $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../mklibspec -a All -c 2 -l libstdcxx | c++filt | ../../fixc++spec >libstdcxx.sgml
	../../mklibspec -a All -l libpam >libpam.sgml
	../../mklibspec -a All -l libgcc_s | sed -e 's/ID=libgcc_s/ID=libgcc-s/' >libgcc_s.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

baselib.sgml: baselib.m4 libstdcxx.sgml libgcc_s.sgml libpam.sgml
