
.SUFFIXES: .sgml .cpp .m4

FILES=intro.sgml
TABLES=standards.sgml

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../mkstandardsgmltable -a All -t Standard -s "'Glib','Gobject','ATK','Pango','Gdk-pixbuf','Gdk','Gtk','ISOC99','Png12','libJPEG','libXML2','fontconfig','qt-mt'" >standards.sgml
	../../mkstandardsgmltable -a All -t Reference -s "'Glib','Gobject','ATK','Pango','Gdk-pixbuf','Gdk','Gtk','ISOC99','Png12','libJPEG','libXML2','fontconfig','qt-mt'" >references.sgml
	../../mklibsgmltable -a All -m LSB_Toolkit_Gtk > glibraries.sgml
	../../mklibsgmltable -a All -m LSB_Toolkit_Qt3 > qlibraries.sgml
	../../mklibsgmltable -a All -m LSB_Graphics_Ext > elibraries.sgml
	../../mklibsgmltable -a All -m LSB_XML > xlibraries.sgml


clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


intro.sgml: standards.sgml glibraries.sgml elibraries.sgml xlibraries.sgml
