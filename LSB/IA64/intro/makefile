
.SUFFIXES: .sgml .cpp .m4

FILES=intro.sgml #cxxintro.sgml
TABLES= standards.sgml references.sgml libraries.sgml 

.m4.sgml:
	m4 -P -Uindex -Uformat -DARCH=IA64 $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mkstandardsgmltable -a IA64 -t Standard -m LSB_Base -v `cat ../../../LSB/target_version.IA64` >standards.sgml
	../../../mkstandardsgmltable -a IA64 -t Reference -m LSB_Base -v `cat ../../../LSB/target_version.IA64` >references.sgml
	../../../mklibsgmltable -a IA64 -v `cat ../../../LSB/target_version.IA64` -m "LSB_Base" >libraries.sgml

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
