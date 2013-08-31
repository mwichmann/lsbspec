TOP=../..

.SUFFIXES: .sgml .m4

FILES=intro.sgml
TABLES=references.sgml slibraries.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) #$(TABLES)

gensrc:
	$(TOP)/mkstandardsgmltable -a All -v `cat $(TOP)/target_version` -m LSB_Security >references.sgml
	$(TOP)/mklibsgmltable -a All -v `cat $(TOP)/target_version` -m LSB_Security >slibraries.sgml


clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

intro.sgml: $(TABLES)
