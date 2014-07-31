TOP=../../..

.SUFFIXES: .sgml .m4

FILES=intro.sgml
TABLES=standards.sgml references.sgml libraries.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat -DARCH=All $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mkstandardsgmltable -a All -t Standard -v `cat $(TOP)/target_version` -m LSB_Graphics,LSB_Toolkit_Gtk,LSB_Toolkit_Qt,LSB_Multimedia,LSB_Toolkit_Independent -s "'XdgMenu','XdgDesktop','XdgIcon','XdgBasedir'" > standards.sgml
	$(TOP)/mkstandardsgmltable -a All -t Reference -v `cat $(TOP)/target_version` -m LSB_Graphics,LSB_Toolkit_Gtk,LSB_Toolkit_Qt,LSB_Multimedia,LSB_Toolkit_Independent -s "'XdgMenu','XdgDesktop','XdgIcon','XdgBasedir'" > references.sgml
	$(TOP)/mklibsgmltable -a All -v `cat $(TOP)/target_version` -m LSB_Graphics,LSB_Toolkit_Gtk,LSB_Toolkit_Qt,LSB_Multimedia,LSB_Toolkit_Independent > libraries.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


intro.sgml: $(TABLES)
