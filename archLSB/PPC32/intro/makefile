
.SUFFIXES: .sgml .cpp .m4

FILES=intro.sgml
TABLES=standards.sgml libraries.sgml

.cpp.sgml:
	cpp -I../../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mkstandardsgmltable -a PPC32 >standards.sgml
	../../../mklibsgmltable -a PPC32 >libraries.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


intro.sgml: standards.sgml libraries.sgml
