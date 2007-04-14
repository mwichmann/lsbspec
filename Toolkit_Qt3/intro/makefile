
.SUFFIXES: .sgml .cpp .m4

FILES=intro.sgml
TABLES=standards.sgml

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../mkstandardsgmltable -a All -s "'qt-mt','ISOC99','ISOCXX'" >standards.sgml
	../../mklibsgmltable -a All -v `cat ../../LSB/version.generic` -m LSB_Toolkit_Qt3 >libraries.sgml


clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


intro.sgml: standards.sgml libraries.sgml
