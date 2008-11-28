
.SUFFIXES: .sgml .cpp .m4

FILES=intro.sgml
TABLES=standards.sgml

# Specs not part of the Core spec
# FIX THIS: there's got to be a better way than listing each spec
EXCLSPECS="'LSB','Xlib','XSM','Xt','X-dbe','X-DPMS','X-Record','X-security','X-shape','X-shm','X-sync','X-test','XICE','XINPUT','XKBlib','OGL','GLX','OGL ABI','ISOCXX','LANANA','Gdk','Gdk-pixbuf','Glib','Gobject','Gtk','X-evi','ATK','Pango','fontconfig','libJPEG','libXML2','Png12','QtCore','QtGui','QtXml','QtNetwork','QtOpenGL','QtSql','QtSvg','qt-mt','xrender','freetype','xft','ALSA','PPD','PPDUpdate','PerlLang','PerlFunc','PerlMod','PerlOp','PerlSyn','PerlFun','PerlMan','PythonLib','Python','XdgMenu','XdgDesktop','XdgIcon','XdgBasedir','xdg-utils','alsa'"

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mkstandardsgmltable -a All -t Standard -x $(EXCLSPECS) >standards.sgml
	../../../mkstandardsgmltable -a All -t Reference -x $(EXCLSPECS) >references.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


intro.sgml: standards.sgml
intro.sgml: ../../../matters/definitions.sgml ../../generic/intro/terms.sgml
