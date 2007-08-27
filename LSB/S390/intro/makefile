
.SUFFIXES: .sgml .cpp .m4

FILES=intro.sgml cxxintro.sgml
TABLES= standards.sgml references.sgml libraries.sgml cxxstandards.sgml cxxlibraries.sgml 

# Specs not part of the main spec
EXCLSPECS="'Xlib','XSM','Xt','X-dbe','X-DPMS','X-Record','X-security','X-shape','X-shm','X-sync','X-test','XICE','XINPUT','OGL','ISOCXX','CXXABI','LANANA','Gdk','Gdk-pixbuf','Glib','Gobject','Gtk','X-evi','ATK','Pango','fontconfig','libJPEG','libXML2','Png12','QtCore','QtGui','QtXml','QtNetwork','QtOpenGL','QtSql','QtSvg','qt-mt'"

.m4.sgml:
	m4 -P -Uindex -Uformat -DARCH=S390 $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mkstandardsgmltable -a S390 -t Standard -x $(EXCLSPECS) >standards.sgml
	../../../mkstandardsgmltable -a S390 -t Reference -x $(EXCLSPECS) >references.sgml
	../../../mkstandardsgmltable -s "'ISOCXX','CXXABI','SUSV3','LSB','ISOC99'" >cxxstandards.sgml
	../../../mklibsgmltable -a S390 -v `cat ../../../LSB/version.S390` -m "LSB_Core" >libraries.sgml
	../../../mklibsgmltable -a S390 -v `cat ../../../LSB/version.S390` -m "LSB_Cpp" -l "'libstdcxx'" >cxxlibraries.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

intro.m4::
	cp ../../generic/intro/$@ .

cxxintro.m4::
	cp ../../generic/intro/$@ .

intro.sgml: standards.sgml libraries.sgml
cxxintro.sgml: cxxstandards.sgml cxxlibraries.sgml
