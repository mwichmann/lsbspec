
.SUFFIXES: .sgml .cpp .m4

FILES=intro.sgml
TABLES=standards.sgml

# Specs not part of the main spec
EXCLSPECS="'Xlib','XSM','Xt','X-dbe','X-DPMS','X-Record','X-security','X-shape','X-shm','X-sync','X-test','XICE','XINPUT','OGL','ISOCXX','LANANA','Gdk','Gdk-pixbuf','Glib','Gobject','Gtk','X-evi','ATK','Pango','fontconfig','libJPEG','libXML2','Png12','QtCore','QtGui','QtXml','QtNetwork','QtOpenGL','QtSql','QtSvg','qt-mt','xrender','freetype','xft'"

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mkstandardsgmltable -a S390 -t Standard -x $(EXCLSPECS) >standards.sgml
	../../../mkstandardsgmltable -a S390 -t Reference -x $(EXCLSPECS) >references.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

intro.m4::
	cp ../../generic/intro/$@ .

intro.sgml: standards.sgml
intro.sgml: ../../../matters/definitions.sgml ../../generic/intro/terms.sgml
