
.SUFFIXES: .sgml .cpp .m4

FILES=intro.sgml cxxintro.sgml
TABLES= standards.sgml references.sgml libraries.sgml cxxstandards.sgml cxxlibraries.sgml 

.m4.sgml:
	m4 -P -Uindex -Uformat -DARCH=S390 $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mkstandardsgmltable -a S390 -t Standard -m LSB_Core -v `cat ../../../LSB/target_version.S390` >standards.sgml
	../../../mkstandardsgmltable -a S390 -t Reference -m LSB_Core -v `cat ../../../LSB/target_version.S390` >references.sgml
	../../../mkstandardsgmltable -s "'ISOCXX','CXXABI','SUSV3','LSB','ISOC99'" >cxxstandards.sgml
	../../../mklibsgmltable -a S390 -v `cat ../../../LSB/target_version.S390` -m "LSB_Core" >libraries.sgml
	../../../mklibsgmltable -a S390 -v `cat ../../../LSB/target_version.S390` -m "LSB_Cpp" -l "'libstdcxx'" >cxxlibraries.sgml

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
