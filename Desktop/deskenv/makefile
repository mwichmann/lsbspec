
.SUFFIXES: .sgml .m4

FILES=deskenv.sgml
TABLES=

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

deskenv.sgml: deskenv.m4 
