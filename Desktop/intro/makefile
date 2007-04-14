
.SUFFIXES: .sgml .cpp .m4

FILES=intro.sgml
TABLES=standards.sgml

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../mkstandardsgmltable -a All -t Standard -s "'Glib','Gobject','ATK','Pango','Gdk-pixbuf','Gdk','Gtk','ISOC99','Png12','libJPEG','libXML2','fontconfig','qt-mt','Xlib','XSM','Xt','X-dbe','X-DPMS','X-evi','X-Record','X-security','X-shape','X-shm','X-sync','XINPUT','XICE','OGL','ISOC99'" >standards.sgml
	../../mkstandardsgmltable -a All -t Reference -s "'Glib','Gobject','ATK','Pango','Gdk-pixbuf','Gdk','Gtk','ISOC99','Png12','libJPEG','libXML2','fontconfig','qt-mt'" >references.sgml
	../../mklibsgmltable -a All -v `cat ../../LSB/version.generic` -m LSB_Toolkit_Gtk > glibraries.sgml
	../../mklibsgmltable -a All -v `cat ../../LSB/version.generic` -m LSB_Toolkit_Qt3 > qlibraries.sgml
	../../mklibsgmltable -a All -v `cat ../../LSB/version.generic` -m LSB_Graphics_Ext > elibraries.sgml
	../../mklibsgmltable -a All -v `cat ../../LSB/version.generic` -m LSB_XML > xlibraries.sgml
	../../mklibsgmltable -a All -v `cat ../../LSB/version.generic` -m LSB_Graphics >x11libraries.sgml


clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


intro.sgml: standards.sgml glibraries.sgml elibraries.sgml xlibraries.sgml
