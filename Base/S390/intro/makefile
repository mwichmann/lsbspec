TOP=../../..

.SUFFIXES: .sgml .m4

FILES=intro.sgml #cxxintro.sgml
TABLES=standards.sgml references.sgml libraries.sgml
SCOPES=../../generic/intro/genscope.sgml ../../generic/intro/modscope.sgml
#CXXTABLES= cxxstandards.sgml cxxlibraries.sgml
#CXXSCOPES=../../generic/intro/genscope.sgml ../../generic/intro/cxxscope.sgml
INTRO=../../generic/intro/intro.m4

.m4.sgml:
	m4 -P -Uindex -Uformat -DARCH=S390 $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mkstandardsgmltable -a S390 -t Standard -m LSB_Base -v `cat $(TOP)/target_version` >standards.sgml
	$(TOP)/mkstandardsgmltable -a S390 -t Reference -m LSB_Base -v `cat $(TOP)/target_version` >references.sgml
	$(TOP)/mklibsgmltable -a S390 -v `cat $(TOP)/target_version` -m "LSB_Base" >libraries.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)
	#rm -f $(CXXTABLES) cxxintro.m4

# change this if the book needs something other than the common intro.m4
intro.sgml: $(SCOPES) $(TABLES) $(INTRO)
	m4 -P -Uindex -Uformat -DARCH=S390 $(INTRO) > $@

# archaic
#cxxintro.m4::
#	cp ../../generic/intro/$@ .
#
#cxxintro.sgml: $(CXXSCOPES) $(CXXTABLES)
