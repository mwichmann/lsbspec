TOP=../../..

.SUFFIXES: .sgml .m4

FILES=intro.sgml
TABLES=standards.sgml

# A trick with the generic spec - we don't want LSB Core Generic to reference itself, but we want to add reference to CXXABI
EXCLSPECS="'LSB'"
INCLSPECS="'CXXABI-1.86'"

.m4.sgml:
	m4 -P -Uindex -Uformat -DARCH=All $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mkstandardsgmltable -a All -t Standard -x $(EXCLSPECS) -s $(INCLSPECS) -m LSB_Base -v `cat $(TOP)/target_version` >standards.sgml
	$(TOP)/mkstandardsgmltable -a All -t Reference -x $(EXCLSPECS) -s $(INCLSPECS) -m LSB_Base -v `cat $(TOP)/target_version` >references.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

intro.sgml: $(TABLES)
