
.SUFFIXES: .sgml .cpp .m4

FILES=intro.sgml
TABLES=standards.sgml libraries.sgml

.cpp.sgml:
	cpp -I../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	./mkstandardsgmltable >standards.sgml
	./mklibsgmltable >libraries.sgml

clean:
	rm -f $(TABLES) $(FILES)

intro.sgml: standards.sgml libraries.sgml
standards.sgml: mkstandardsgmltable
libraries.sgml: mklibsgmltable
