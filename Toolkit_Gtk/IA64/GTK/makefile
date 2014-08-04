TOP=../../..

.SUFFIXES: .sgml .m4

MANPAGES=
FILES=GTK.sgml
INTRO=../../generic/GTK/GTK.m4
TABLES= libGlib.sgml libGobject.sgml libGmodule.sgml libGthread.sgml libAtk.sgml libPango.sgml libPangoxft.sgml libPangoft2.sgml libGdk_pixbuf.sgml libGdk_pixbuf_xlib.sgml libGdk_x11.sgml libGtk_x11.sgml libPangoCairo.sgml libGdk_3.sgml libGtk_3.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat -DARCH=IA64 $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibspec -a IA64 -v `cat $(TOP)/target_version` -c 2 -l libglib-2.0 >libGlib.sgml
	$(TOP)/mklibspec -a IA64 -v `cat $(TOP)/target_version` -c 2 -l libgobject-2.0 >libGobject.sgml
	$(TOP)/mklibspec -a IA64 -v `cat $(TOP)/target_version` -c 2 -l libgmodule-2.0 >libGmodule.sgml
	$(TOP)/mklibspec -a IA64 -v `cat $(TOP)/target_version` -c 2 -l libgthread-2.0 >libGthread.sgml
	$(TOP)/mklibspec -a IA64 -v `cat $(TOP)/target_version` -c 2 -l libatk-1.0 >libAtk.sgml
	$(TOP)/mklibspec -a IA64 -v `cat $(TOP)/target_version` -c 2 -l libpango-1.0 >libPango.sgml
	$(TOP)/mklibspec -a IA64 -v `cat $(TOP)/target_version` -c 2 -l libpangoxft-1.0 >libPangoxft.sgml
	$(TOP)/mklibspec -a IA64 -v `cat $(TOP)/target_version` -c 2 -l libpangoft2-1.0 >libPangoft2.sgml
	$(TOP)/mklibspec -a IA64 -v `cat $(TOP)/target_version` -c 2 -l libgdk_pixbuf-2.0 >libGdk_pixbuf.sgml
	$(TOP)/mklibspec -a IA64 -v `cat $(TOP)/target_version` -c 2 -l libgdk_pixbuf_xlib-2.0 >libGdk_pixbuf_xlib.sgml
	$(TOP)/mklibspec -a IA64 -v `cat $(TOP)/target_version` -c 2 -l libgdk-x11-2.0 >libGdk_x11.sgml
	$(TOP)/mklibspec -a IA64 -v `cat $(TOP)/target_version` -c 2 -l libgtk-x11-2.0 >libGtk_x11.sgml
	$(TOP)/mklibspec -a IA64 -v `cat $(TOP)/target_version` -c 2 -l libpangocairo-1.0 >libPangoCairo.sgml
	$(TOP)/mklibspec -a IA64 -v `cat $(TOP)/target_version` -c 2 -l libgio-2.0 >libGio.sgml
	$(TOP)/mklibspec -a IA64 -v `cat $(TOP)/target_version` -c 2 -l libgdk-3 >libGdk_3.sgml
	$(TOP)/mklibspec -a IA64 -v `cat $(TOP)/target_version` -c 2 -l libgtk-3 >libGtk_3.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

# change this if the book needs something other than the common GTK.m4
GTK.sgml: $(TABLES) $(MANPAGES) $(INTRO)
	m4 -P -Uindex -Uformat -DARCH=IA64 $(INTRO) > $@
