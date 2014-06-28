TOP=../../..

.SUFFIXES: .sgml .m4

FILES=intro.sgml #cxxintro.sgml
TABLES= standards.sgml references.sgml glibraries.sgml pslibs.sgml

# A trick with the generic spec - we don't want LSB Core Generic to reference itself, but we want to add reference to CXXABI
EXCLSPECS="'LSB'"
INCLSPECS="'CXXABI-1.86'"

.m4.sgml:
	m4 -P -Uindex -Uformat -DARCH=All -DCORE=1 $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mkstandardsgmltable -a All -t Standard -x $(EXCLSPECS) -s $(INCLSPECS) -m LSB_Base,LSB_Security -v `cat $(TOP)/target_version` >standards.sgml
	$(TOP)/mkstandardsgmltable -a All -t Reference -x $(EXCLSPECS) -s $(INCLSPECS) -m LSB_Base,LSB_Security -v `cat $(TOP)/target_version` >references.sgml
	$(TOP)/mklibsgmltable -a All -v `cat $(TOP)/target_version` -m "LSB_Base" >glibraries.sgml
	$(TOP)/mklibsgmltable -a None -v `cat $(TOP)/target_version` -m "LSB_Base" >pslibs.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


libraries.sgml: glibraries.sgml pslibs.sgml
intro.sgml: genscope.sgml modscope.sgml standards.sgml libraries.sgml
cxxintro.sgml: genscope.sgml cxxscope.sgml cxxstandards.sgml cxxlibraries.sgml

