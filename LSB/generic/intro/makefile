
.SUFFIXES: .sgml .cpp .m4

FILES=intro.sgml cxxintro.sgml
TABLES= standards.sgml references.sgml glibraries.sgml pslibs.sgml cxxstandards.sgml cxxlibraries.sgml

# Specs not part of the main spec
EXCLSPECS="'LSB','Xlib','XSM','Xt','X-dbe','X-DPMS','X-Record','X-security','X-shape','X-shm','X-sync','X-test','XICE','XINPUT','OGL','ISOCXX','LANANA','Gdk','Gdk-pixbuf','Glib','Gobject','Gtk','X-evi','ATK','Pango','fontconfig','libJPEG','libXML2','Png12','QtCore','QtGui','QtXml','QtNetwork','QtOpenGL','QtSql','QtSvg','qt-mt','xrender','freetype','xft'"

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -P -Uindex -Uformat -DARCH=All -DCORE=1 $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mkstandardsgmltable -a All -t Standard -x $(EXCLSPECS) >standards.sgml
	../../../mkstandardsgmltable -a All -t Reference -x $(EXCLSPECS) >references.sgml
	../../../mkstandardsgmltable -s "'LSB','ISOCXX','CXXABI','SUSV3','ISOC99'" >cxxstandards.sgml
	../../../mklibsgmltable -a All -v `cat ../../../LSB/version.generic` -m "LSB_Core" >glibraries.sgml
	../../../mklibsgmltable -a None -v `cat ../../../LSB/version.generic` -m "LSB_Core" >pslibs.sgml
	../../../mklibsgmltable -a All -v `cat ../../../LSB/version.generic` -m "LSB_Cpp" -l "'libstdcxx'" >cxxlibraries.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


intro.sgml: preface.sgml genscope.sgml modscope.sgml standards.sgml libraries.sgml terms.sgml
cxxintro.sgml: preface.sgml genscope.sgml cxxscope.sgml cxxstandards.sgml cxxlibraries.sgml terms.sgml

libraries.sgml: glibraries.sgml pslibs.sgml cxxlibraries.sgml
