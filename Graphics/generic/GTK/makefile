
.SUFFIXES: .sgml .cpp .m4

#MANPAGES=_XtCopyFromArg.sgml _XtInheritTranslations.sgml _XtInherit.sgml \
	_XtIsSubclassOf.sgml

FILES=GTK.sgml
TABLES= libGlib.sgml libGobject.sgml libGmodule.sgml libAtk.sgml libPango.sgml libPangoxft.sgml libPangoft2.sgml libGdk_pixbuf.sgml libGdk_pixbuf_xlib.sgml libGdk-x11.sgml libGtk-x11.sgml

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a All -c 4 -l libglib-2.0 >libGlib.sgml
	../../../mklibspec -a All -c 4 -l libgobject-2.0 >libGobject.sgml
	../../../mklibspec -a All -c 4 -l libgmodule-2.0 >libGmodule.sgml
	../../../mklibspec -a All -c 4 -l libatk-1.0 >libAtk.sgml
	../../../mklibspec -a All -c 4 -l libpango-1.0 >libPango.sgml
	../../../mklibspec -a All -c 4 -l libpangoxft-1.0 >libPangoxft.sgml
	../../../mklibspec -a All -c 4 -l libpangoft2-1.0 >libPangoft2.sgml
	../../../mklibspec -a All -c 4 -l libgdk_pixbuf-2.0 >libGdk_pixbuf.sgml
	../../../mklibspec -a All -c 4 -l libgdk_pixbuf_xlib-2.0 >libGdk_pixbuf_xlib.sgml
	../../../mklibspec -a All -c 4 -l libgdk-x11-2.0 >libGdk-x11.sgml
	../../../mklibspec -a All -c 4 -l libgtk-x11-2.0 >libGtk-x11.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


GTK.sgml: libGlib.sgml libGobject.sgml libGmodule.sgml libAtk.sgml libPango.sgml libPangoxft.sgml libPangoft2.sgml libGdk_pixbuf.sgml libGdk_pixbuf_xlib.sgml libGdk-x11.sgml libGtk-x11.sgml
#GTK.sgml: $(MANPAGES)
