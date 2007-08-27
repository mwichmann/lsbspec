
.SUFFIXES: .sgml .cpp .m4

MANPAGES=

FILES=baselib.sgml
TABLES=

.m4.sgml:
	m4 -P -Uindex -Uformat -Usubstr $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

baselib.sgml: baselib.m4 
