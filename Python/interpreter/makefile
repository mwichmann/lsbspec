
.SUFFIXES: .sgml .m4

FILES= python.sgml

TABLES=

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	@:

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


python.sgml:python.m4 modules.sgml command.sgml
