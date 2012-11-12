
.SUFFIXES: .sgml .m4

FILES=intro.sgml
TABLES=standards.sgml references.sgml libraries.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../mkstandardsgmltable -a All -v `cat ../../LSB/target_version.generic` -s "'ISOC99'" >standards.sgml
	../../mkstandardsgmltable -a All -v `cat ../../LSB/target_version.generic` -m LSB_Scan >references.sgml
	../../mklibsgmltable -a All -v `cat ../../LSB/target_version.generic` -m LSB_Scan >libraries.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

intro.sgml: $(TABLES)
