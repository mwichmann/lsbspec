TOP=../../..

.SUFFIXES: .sgml .m4

FILES=intro.sgml cxxintro.sgml
CTABLES= standards.sgml references.sgml libraries.sgml
CXXTABLES= cxxstandards.sgml cxxlibraries.sgml 

.m4.sgml:
	m4 -P -Uindex -Uformat -DARCH=PPC64 $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mkstandardsgmltable -a PPC64 -t Standard -m LSB_Core -v `cat $(TOP)/target_version` >standards.sgml
	$(TOP)/mkstandardsgmltable -a PPC64 -t Reference -m LSB_Core -v `cat $(TOP)/target_version` >references.sgml
	$(TOP)/mkstandardsgmltable -s "'ISOCXX','CXXABI-1.86','SUSV3','LSB','ISOC99'" >cxxstandards.sgml
	$(TOP)/mklibsgmltable -a PPC64 -v `cat $(TOP)/target_version` -m "LSB_Core" >libraries.sgml
	$(TOP)/mklibsgmltable -a PPC64 -v `cat $(TOP)/target_version` -m "LSB_Cpp" -l "'libstdcxx'" >cxxlibraries.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(CTABLES) $(CXXTABLES) intro.m4 cxxintro.m4

# change this if all the books stop sharing the same m4 files
intro.m4::
	cp ../../generic/intro/$@ .

cxxintro.m4::
	cp ../../generic/intro/$@ .

intro.sgml: ../../generic/intro/genscope.sgml modscope.sgml $(CTABLES)
cxxintro.sgml: ../../generic/intro/genscope.sgml ../../generic/intro/cxxscope.sgml $(CXXTABLES)
