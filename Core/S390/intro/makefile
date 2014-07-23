TOP=../../..

.SUFFIXES: .sgml .m4

FILES=intro.sgml #cxxintro.sgml
TABLES= standards.sgml references.sgml libraries.sgml 

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
	rm -f $(TABLES) intro.m4 modscope.sgml

# change this if the book needs something other than the common intro.m4
intro.m4:: modscope.sgml
	cp ../../generic/intro/$@ .

cxxintro.m4::
	cp ../../generic/intro/$@ .

# change this if the book needs something other than the common scope file
modscope.sgml: ../../generic/intro/archmodscope.sgml
	cp $< $@

intro.sgml: standards.sgml libraries.sgml
cxxintro.sgml: cxxstandards.sgml cxxlibraries.sgml
