
.SUFFIXES: .sgml .cpp .m4

FILES=intro.sgml
TABLES=standards.sgml

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uindex -Uformat $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mkstandardsgmltable -a All >standards.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


intro.sgml: standards.sgml
intro.sgml: ../../../matters/definitions.sgml ../../generic/intro/terms.sgml
