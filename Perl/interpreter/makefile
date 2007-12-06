
.SUFFIXES: .sgml .m4

FILES= perl.sgml

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


perl.sgml:perl.m4 modules.sgml
