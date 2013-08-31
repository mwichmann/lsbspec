TOP=../..

.SUFFIXES: .sgml .cpp .m4

FILES=intro.sgml
TABLES=standards.sgml libraries.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mkstandardsgmltable -a All -v `cat $(TOP)/target_version` -m LSB_Graphics_Ext >standards.sgml
	$(TOP)/mklibsgmltable -a All -v `cat $(TOP)/target_version` -m LSB_Graphics_Ext >libraries.sgml


clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


intro.sgml: standards.sgml libraries.sgml
