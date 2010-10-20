
.SUFFIXES: .sgml .cpp .m4

FILES=intro.sgml
TABLES=standards.sgml references.sgml libraries.sgml

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../mkstandardsgmltable -a All -t Standard -v `cat ../../LSB/target_version.generic` -m LSB_Graphics,LSB_Graphics_Ext,LSB_Toolkit_Gtk,LSB_Toolkit_Qt,LSB_Toolkit_Qt3,LSB_XML,LSB_Multimedia -s "'XdgMenu','XdgDesktop','XdgIcon','XdgBasedir'" > standards.sgml
	../../mkstandardsgmltable -a All -t Reference -v `cat ../../LSB/target_version.generic` -m LSB_Graphics,LSB_Graphics_Ext,LSB_Toolkit_Gtk,LSB_Toolkit_Qt,LSB_Toolkit_Qt3,LSB_XML,LSB_Multimedia -s "'XdgMenu','XdgDesktop','XdgIcon','XdgBasedir'" > references.sgml
	# build a single table instead of multiples, looked too ugly
	#../../mklibsgmltable -a All -v `cat ../../LSB/target_version.generic` -m LSB_Graphics >x11libraries.sgml
	#../../mklibsgmltable -a All -v `cat ../../LSB/target_version.generic` -m LSB_Toolkit_Gtk > glibraries.sgml
	#../../mklibsgmltable -a All -v `cat ../../LSB/target_version.generic` -m LSB_Toolkit_Qt > q4libraries.sgml
	#../../mklibsgmltable -a All -v `cat ../../LSB/target_version.generic` -m LSB_Toolkit_Qt3 > qlibraries.sgml
	#../../mklibsgmltable -a All -v `cat ../../LSB/target_version.generic` -m LSB_Graphics_Ext > elibraries.sgml
	#../../mklibsgmltable -a All -v `cat ../../LSB/target_version.generic` -m LSB_XML > xlibraries.sgml
	../../mklibsgmltable -a All -v `cat ../../LSB/target_version.generic` -m LSB_Graphics,LSB_Graphics_Ext,LSB_Toolkit_Gtk,LSB_Toolkit_Qt,LSB_Toolkit_Qt3,LSB_XML,LSB_Multimedia > libraries.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


intro.sgml: $(TABLES)
