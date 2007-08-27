
.SUFFIXES: .sgml .cpp .m4

MANPAGES=

FILES=command.sgml
TABLES=

.m4.sgml:
	m4 -P -Uindex -Uformat -Usubstr $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

command.sgml: command.m4
