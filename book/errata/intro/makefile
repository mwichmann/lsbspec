
.SUFFIXES: .sgml .cpp .m4

FILES=intro.sgml
TABLES=

.m4.sgml:
	m4 -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


