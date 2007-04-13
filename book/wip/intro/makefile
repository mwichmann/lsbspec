
.SUFFIXES: .sgml .cpp .m4

FILES=intro.sgml
TABLES=standards.sgml libraries.sgml pslibs.sgml

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mkstandardsgmltable -a All >standards.sgml
	../../../mklibsgmltable -a All -v `cat ../../../LSB/version.generic` -f >libraries.sgml
	../../../mklibsgmltable -a None -v `cat ../../../LSB/version.generic` >pslibs.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


intro.sgml: standards.sgml libraries.sgml
