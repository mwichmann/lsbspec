
.SUFFIXES: .sgml .cpp .m4

FILES=intro.sgml
TABLES=standards.sgml references.sgml libraries.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../mkstandardsgmltable -a All -t Standard -v `cat ../../LSB/target_version.generic` -m LSB_Graphics,LSB_Toolkit_Gtk,LSB_Toolkit_Qt,LSB_Multimedia,LSB_Toolkit_Independent -s "'XdgMenu','XdgDesktop','XdgIcon','XdgBasedir'" > standards.sgml
	../../mkstandardsgmltable -a All -t Reference -v `cat ../../LSB/target_version.generic` -m LSB_Graphics,LSB_Toolkit_Gtk,LSB_Toolkit_Qt,LSB_Multimedia,LSB_Toolkit_Independent -s "'XdgMenu','XdgDesktop','XdgIcon','XdgBasedir'" > references.sgml
	../../mklibsgmltable -a All -v `cat ../../LSB/target_version.generic` -m LSB_Graphics,LSB_Toolkit_Gtk,LSB_Toolkit_Qt,LSB_Multimedia,LSB_Toolkit_Independent > libraries.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


intro.sgml: $(TABLES)
