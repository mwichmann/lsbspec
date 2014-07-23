TOP=../..

.SUFFIXES: .sgml .m4

FILES=intro.sgml
TABLES=standards.sgml libraries.sgml pslibs.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mkstandardsgmltable -a All -v `cat $(TOP)/target_version` >standards.sgml
	$(TOP)/mklibsgmltable -a All -v `cat $(TOP)/target_version` -f >libraries.sgml
	$(TOP)/mklibsgmltable -a None -v `cat $(TOP)/target_version` >pslibs.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


intro.sgml: standards.sgml libraries.sgml
