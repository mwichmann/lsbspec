TOP=../..

.SUFFIXES: .sgml .cpp .m4

FILES=intro.sgml
TABLES=standards.sgml glibraries.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../mkstandardsgmltable -a All -v `cat ../../LSB/target_version.generic` -m LSB_Graphics >standards.sgml
	../../mklibsgmltable -a All -v `cat ../../LSB/target_version.generic` -m LSB_Graphics >glibraries.sgml


clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


intro.sgml: standards.sgml glibraries.sgml
