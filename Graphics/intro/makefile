
.SUFFIXES: .sgml .cpp .m4

FILES=intro.sgml
TABLES=standards.sgml

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../mkstandardsgmltable -a All -s "'Xlib','XSM','Xt','X-dbe','X-DPMS','X-Record','X-security','X-shape','X-shm','X-sync','XICE','OGL','LSB'" >standards.sgml
	../../mklibsgmltable -a All -m LSB-Graphics >glibraries.sgml


clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


intro.sgml: standards.sgml glibraries.sgml
