
.SUFFIXES: .sgml .cpp .m4

FILES=intro.sgml cxxintro.sgml
TABLES=standards.sgml glibraries.sgml

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uindex -Uformat -DARCH=All $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mkstandardsgmltable -a All >standards.sgml
	../../../mkstandardsgmltable -s "'ISOCXX','CXXABI'" >cxxstandards.sgml
	../../../mklibsgmltable -a All >glibraries.sgml
	../../../mklibsgmltable -a None >pslibs.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


intro.sgml: preface.sgml genscope.sgml modscope.sgml standards.sgml libraries.sgml terms.sgml
cxxintro.sgml: preface.sgml genscope.sgml cxxscope.sgml cxxstandards.sgml libraries.sgml terms.sgml

libraries.sgml: glibraries.sgml pslibs.sgml
