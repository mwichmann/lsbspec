
.SUFFIXES: .sgml .cpp .m4

FILES=intro.sgml cxxintro.sgml
TABLES= standards.sgml references.sgml libraries.sgml cxxstandards.sgml cxxlibraries.sgml 

.m4.sgml:
	m4 -P -Uindex -Uformat -DARCH=S390X $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mkstandardsgmltable -a S390X -t Standard -m LSB_Core -v `cat ../../../LSB/target_version.S390X` >standards.sgml
	../../../mkstandardsgmltable -a S390X -t Reference -m LSB_Core -v `cat ../../../LSB/target_version.S390X` >references.sgml
	../../../mkstandardsgmltable -s "'ISOCXX','CXXABI-1.86','SUSV3','LSB','ISOC99'" >cxxstandards.sgml
	../../../mklibsgmltable -a S390X -v `cat ../../../LSB/target_version.S390X` -m "LSB_Core" >libraries.sgml
	../../../mklibsgmltable -a S390X -v `cat ../../../LSB/target_version.S390X` -m "LSB_Cpp" -l "'libstdcxx'" >cxxlibraries.sgml

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
