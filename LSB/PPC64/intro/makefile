
.SUFFIXES: .sgml .cpp .m4

FILES=intro.sgml
TABLES=standards.sgml libraries.sgml 

.cpp.sgml:
	cpp -I../../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uformat $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mkstandardsgmltable -a PPC64 >standards.sgml
	../../../mklibsgmltable -a PPC64 >libraries.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

intro.m4: ../../generic/intro/intro.m4
	cp ../../generic/intro/$@ .

intro.sgml: standards.sgml libraries.sgml
