TOP=../../..

.SUFFIXES: .sgml .m4

FILES=intro.sgml #cxxintro.sgml
TABLES= standards.sgml references.sgml libraries.sgml
#CXXTABLES= cxxstandards.sgml cxxlibraries.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat -DARCH=IA64 $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mkstandardsgmltable -a IA64 -t Standard -m LSB_Base -v `cat $(TOP)/target_version` >standards.sgml
	$(TOP)/mkstandardsgmltable -a IA64 -t Reference -m LSB_Base -v `cat $(TOP)/target_version` >references.sgml
	$(TOP)/mklibsgmltable -a IA64 -v `cat $(TOP)/target_version` -m "LSB_Base" >libraries.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES) intro.m4
	#rm -f $(CXXTABLES) cxxintro.m4

# change this if all the books stop sharing the same m4 file
intro.m4::
	cp ../../generic/intro/$@ .

#cxxintro.m4::
#	cp ../../generic/intro/$@ .

intro.sgml: ../../generic/intro/genscope.sgml modscope.sgml $(TABLES)
#cxxintro.sgml: ../../generic/intro/genscope.sgml ../../generic/intro/cxxscope.sgml $(CXXTABLES)
