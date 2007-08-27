
.SUFFIXES: .sgml .cpp .m4

MANPAGES=

FILES=execenv.sgml
TABLES=

.m4.sgml:
	m4 -P -Uindex -Uformat -Usubstr $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

execenv.sgml: execenv.m4
