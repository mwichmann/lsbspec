TOP=../..

.SUFFIXES: .sgml .m4

FILES=intro.sgml
TABLES=references.sgml tumlibraries.sgml gtk3libraries.sgml
INCLSPECS="'ISOC99'"

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) #$(TABLES)
gensrc:
	$(TOP)/mkstandardsgmltable -a All -s $(INCLSPECS) -m LSB_TUM,LSB_Toolkit_Gtk3 -v `cat $(TOP)/target_version` >references.sgml
	$(TOP)/mklibsgmltable -a All -v `cat $(TOP)/target_version` -m LSB_TUM >tumlibraries.sgml
	$(TOP)/mklibsgmltable -a All -v `cat $(TOP)/target_version` -m LSB_Toolkit_Gtk3 >gtk3libraries.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

intro.sgml: $(TABLES)
