TOP=../../..

.SUFFIXES: .sgml .cpp .m4

FILES=intro.sgml
TABLES=standards.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mkstandardsgmltable -a All -s "'RFC1952','RFC2440'" >standards.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


intro.sgml: standards.sgml
