TOP=../../..

.SUFFIXES: .sgml .m4

FILES=intro.sgml #cxxintro.sgml
TABLES= standards.sgml references.sgml libraries.sgml 

.m4.sgml:
	m4 -P -Uindex -Uformat -DARCH=IA32 $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mkstandardsgmltable -a IA32 -t Standard -m LSB_Base -v `cat $(TOP)/target_version` >standards.sgml
	$(TOP)/mkstandardsgmltable -a IA32 -t Reference -m LSB_Base -v `cat $(TOP)/target_version` >references.sgml
	$(TOP)/mklibsgmltable -a IA32 -v `cat $(TOP)/target_version` -m "LSB_Base" >libraries.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

intro.m4::
	cp ../../generic/intro/$@ .

cxxintro.m4::
	cp ../../generic/intro/$@ .

intro.sgml: standards.sgml libraries.sgml
cxxintro.sgml: cxxstandards.sgml cxxlibraries.sgml
