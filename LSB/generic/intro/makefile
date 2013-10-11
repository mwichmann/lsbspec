TOP=../../..

.SUFFIXES: .sgml .m4

FILES=intro.sgml cxxintro.sgml
CTABLES= standards.sgml references.sgml glibraries.sgml pslibs.sgml
CXXTABLES= cxxstandards.sgml cxxlibraries.sgml 

# A trick with the generic spec - we don't want LSB Core Generic to reference itself, but we want to add reference to CXXABI
EXCLSPECS="'LSB'"
INCLSPECS="'CXXABI-1.86'"

.m4.sgml:
	m4 -P -Uindex -Uformat -DARCH=All -DCORE=1 $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mkstandardsgmltable -a All -t Standard -x $(EXCLSPECS) -s $(INCLSPECS) -m LSB_Core,LSB_Security -v `cat $(TOP)/target_version` >standards.sgml
	$(TOP)/mkstandardsgmltable -a All -t Reference -x $(EXCLSPECS) -s $(INCLSPECS) -m LSB_Core,LSB_Security -v `cat $(TOP)/target_version` >references.sgml
	$(TOP)/mkstandardsgmltable -a All -m LSB_Cpp -v `cat $(TOP)/target_version` >cxxstandards.sgml
	$(TOP)/mklibsgmltable -a All -v `cat $(TOP)/target_version` -m "LSB_Core" >glibraries.sgml
	$(TOP)/mklibsgmltable -a None -v `cat $(TOP)/target_version` -m "LSB_Core" >pslibs.sgml
	$(TOP)/mklibsgmltable -a All -v `cat $(TOP)/target_version` -m "LSB_Cpp" -l "'libstdcxx'" >cxxlibraries.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(CTABLES) $(CXXTABLES)

intro.sgml: genscope.sgml modscope.sgml $(CTABLES)
cxxintro.sgml: genscope.sgml cxxscope.sgml $(CXXTABLES)
libraries.sgml: glibraries.sgml pslibs.sgml cxxlibraries.sgml
