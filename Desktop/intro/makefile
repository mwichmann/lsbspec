
.SUFFIXES: .sgml .cpp .m4

FILES=intro.sgml
TABLES=standards.sgml references.sgml libraries.sgml

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../mkstandardsgmltable -a All -t  Standard -s "'freetype','xft','xrender','cairo 1.2.0','Png12','libJPEG','libXML2','fontconfig','qt-mt','Xlib','XSM','Xt','X-dbe','X-DPMS','X-evi','X-Record','X-security','X-shape','X-shm','X-sync','XINPUT','XKBlib','XICE','X-test','OGL','OGL ABI','GLX','GLU','ISOC99','QtCore','QtGui','QtNetwork','QtXml','QtOpenGL','QtSvg','QtSql','ISOCXX','CXXABI-1.86','SUSv3','XdgMenu','XdgDesktop','XdgIcon','XdgBasedir','ATK 1.10','Gdk 2.10','Gdk-pixbuf 2.8','Glib 2.12','Gobject 2.12','Gtk 2.10','Pango 1.10'" > standards.sgml
	../../mkstandardsgmltable -a All -t Reference -s "'freetype','xft','xrender','cairo 1.2.0','Png12','libJPEG','libXML2','fontconfig','qt-mt','Xlib','XSM','Xt','X-dbe','X-DPMS','X-evi','X-Record','X-security','X-shape','X-shm','X-sync','XINPUT','XKBlib','XICE','X-test','OGL','OGL ABI','GLX','GLU','ISOC99','QtCore','QtGui','QtNetwork','QtXml','QtOpenGL','QtSvg','QtSql','ISOCXX','CXXABI-1.86','SUSv3','XdgMenu','XdgDesktop','XdgIcon','XdgBasedir','ATK 1.10','Gdk 2.10','Gdk-pixbuf 2.8','Glib 2.12','Gobject 2.12','Gtk 2.10','Pango 1.10'" > references.sgml
	# build a single table instead of multiples, looked too ugly
	#../../mklibsgmltable -a All -v `cat ../../LSB/target_version.generic` -m LSB_Graphics >x11libraries.sgml
	#../../mklibsgmltable -a All -v `cat ../../LSB/target_version.generic` -m LSB_Toolkit_Gtk > glibraries.sgml
	#../../mklibsgmltable -a All -v `cat ../../LSB/target_version.generic` -m LSB_Toolkit_Qt > q4libraries.sgml
	#../../mklibsgmltable -a All -v `cat ../../LSB/target_version.generic` -m LSB_Toolkit_Qt3 > qlibraries.sgml
	#../../mklibsgmltable -a All -v `cat ../../LSB/target_version.generic` -m LSB_Graphics_Ext > elibraries.sgml
	#../../mklibsgmltable -a All -v `cat ../../LSB/target_version.generic` -m LSB_XML > xlibraries.sgml
	../../mklibsgmltable -a All -v `cat ../../LSB/target_version.generic` -m LSB_Graphics,LSB_Graphics_Ext,LSB_Toolkit_Gtk,LSB_Toolkit_Qt,LSB_Toolkit_Qt3,LSB_XML > libraries.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


intro.sgml: $(TABLES)
