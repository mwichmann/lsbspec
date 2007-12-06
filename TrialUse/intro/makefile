
.SUFFIXES: .sgml .m4

FILES=intro.sgml
TABLES=references.sgml libraries.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) #$(TABLES)

gensrc:
	../../mkstandardsgmltable -a All -s "'ALSA','ISOC99','xdg-utils'" >references.sgml
	../../mklibsgmltable -a All -v `cat ../../LSB/version.generic` -m LSB_Multimedia >libraries.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

intro.sgml: references.sgml libraries.sgml
