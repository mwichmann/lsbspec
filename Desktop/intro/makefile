TOP=../..

.SUFFIXES: .sgml .cpp .m4

FILES=intro.sgml
TABLES=standards.sgml references.sgml libraries.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mkstandardsgmltable -a All -t Standard -v `cat $(TOP)/target_version` -m LSB_Graphics,LSB_Graphics_Ext,LSB_Toolkit_Gtk,LSB_Toolkit_Qt,LSB_Toolkit_Qt3,LSB_XML,LSB_Multimedia,LSB_Desktop_Misc -s "'XdgMenu','XdgDesktop','XdgIcon','XdgBasedir'" > standards.sgml
	$(TOP)/mkstandardsgmltable -a All -t Reference -v `cat $(TOP)/target_version` -m LSB_Graphics,LSB_Graphics_Ext,LSB_Toolkit_Gtk,LSB_Toolkit_Qt,LSB_Toolkit_Qt3,LSB_XML,LSB_Multimedia,LSB_Desktop_Misc -s "'XdgMenu','XdgDesktop','XdgIcon','XdgBasedir'" > references.sgml
	# build a single table instead of multiples, looked too ugly
	#$(TOP)/mklibsgmltable -a All -v `cat $(TOP)/target_version` -m LSB_Graphics >x11libraries.sgml
	#$(TOP)/mklibsgmltable -a All -v `cat $(TOP)/target_version` -m LSB_Toolkit_Gtk > glibraries.sgml
	#$(TOP)/mklibsgmltable -a All -v `cat $(TOP)/target_version` -m LSB_Toolkit_Qt > q4libraries.sgml
	#$(TOP)/mklibsgmltable -a All -v `cat $(TOP)/target_version` -m LSB_Toolkit_Qt3 > qlibraries.sgml
	#$(TOP)/mklibsgmltable -a All -v `cat $(TOP)/target_version` -m LSB_Graphics_Ext > elibraries.sgml
	#$(TOP)/mklibsgmltable -a All -v `cat $(TOP)/target_version` -m LSB_XML > xlibraries.sgml
	$(TOP)/mklibsgmltable -a All -v `cat $(TOP)/target_version` -m LSB_Graphics,LSB_Graphics_Ext,LSB_Toolkit_Gtk,LSB_Toolkit_Qt,LSB_Toolkit_Qt3,LSB_XML,LSB_Multimedia,LSB_Desktop_Misc > libraries.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


intro.sgml: $(TABLES)
