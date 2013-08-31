TOP=../..

.SUFFIXES: .sgml .m4

FILES=intro.sgml
TABLES=references.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) #$(TABLES)

gensrc:
	../../mkstandardsgmltable -a All -v `cat ../../LSB/target_version.generic` -m LSB_TUM >references.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

intro.sgml: references.sgml
