
.SUFFIXES: .sgml .m4

FILES=intro.sgml
TABLES=standards.sgml libraries.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mkstandardsgmltable -a All -s "'CUPS 1.2', 'PPD','PPDUpdate','ISOC99','FHS'" >standards.sgml
	../../../mklibsgmltable -a All -v `cat ../../../LSB/target_version.generic` -m LSB_Printing >libraries.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

intro.sgml: $(TABLES)
