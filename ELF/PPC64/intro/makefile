TOP=../../..

.SUFFIXES: .sgml .m4

FILES=intro.sgml
TABLES=standards.sgml
INTRO=../../generic/intro/intro.m4

.m4.sgml:
	m4 -P -Uindex -Uformat -DARCH=PPC64$*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mkstandardsgmltable -a PPC64 -t Standard -m LSB_Base -v `cat $(TOP)/target_version` >standards.sgml
	$(TOP)/mkstandardsgmltable -a PPC64 -t Reference -m LSB_Base -v `cat $(TOP)/target_version` >references.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

# change this if the book needs something other than the common intro.m4
intro.sgml: $(SCOPES) $(TABLES) $(INTRO)
	m4 -P -Uindex -Uformat -DARCH=PPC64 $(INTRO) > $@
