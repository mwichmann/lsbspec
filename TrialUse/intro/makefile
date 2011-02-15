
.SUFFIXES: .sgml .m4

FILES=intro.sgml
TABLES=references.sgml #libraries.sgml slibraries.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) #$(TABLES)
	#../../mkstandardsgmltable -a All -s "'xdg-utils','ALSA','ISOC99','NSS SSL','NSPR'" >references.sgml
gensrc:
	../../mkstandardsgmltable -a All -v `cat ../../LSB/target_version.generic` -m LSB_TUM >references.sgml
	#../../mklibsgmltable -a All -v `cat ../../LSB/target_version.generic` -m LSB_Multimedia >libraries.sgml
	#../../mklibsgmltable -a All -v `cat ../../LSB/target_version.generic` -m LSB_Security >slibraries.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

intro.sgml: $(TABLES)
