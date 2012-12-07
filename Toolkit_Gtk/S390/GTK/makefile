TOP=../../..

.SUFFIXES: .sgml .m4

MANPAGES=
FILES=GTK.sgml
TABLES= libGlib.sgml libGobject.sgml libGmodule.sgml libGthread.sgml libAtk.sgml libPango.sgml libPangoxft.sgml libPangoft2.sgml libGdk_pixbuf.sgml libGdk_pixbuf_xlib.sgml libGdk-x11.sgml libGtk-x11.sgml libPangoCairo.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibspec -a S390 -v `cat $(TOP)/target_version` -c 2 -l libglib-2.0 >libGlib.sgml
	$(TOP)/mklibspec -a S390 -v `cat $(TOP)/target_version` -c 2 -l libgobject-2.0 >libGobject.sgml
	$(TOP)/mklibspec -a S390 -v `cat $(TOP)/target_version` -c 2 -l libgmodule-2.0 >libGmodule.sgml
	$(TOP)/mklibspec -a S390 -v `cat $(TOP)/target_version` -c 2 -l libgthread-2.0 >libGthread.sgml
	$(TOP)/mklibspec -a S390 -v `cat $(TOP)/target_version` -c 2 -l libatk-1.0 >libAtk.sgml
	$(TOP)/mklibspec -a S390 -v `cat $(TOP)/target_version` -c 2 -l libpango-1.0 >libPango.sgml
	$(TOP)/mklibspec -a S390 -v `cat $(TOP)/target_version` -c 2 -l libpangoxft-1.0 >libPangoxft.sgml
	$(TOP)/mklibspec -a S390 -v `cat $(TOP)/target_version` -c 2 -l libpangoft2-1.0 >libPangoft2.sgml
	$(TOP)/mklibspec -a S390 -v `cat $(TOP)/target_version` -c 2 -l libgdk_pixbuf-2.0 >libGdk_pixbuf.sgml
	$(TOP)/mklibspec -a S390 -v `cat $(TOP)/target_version` -c 2 -l libgdk_pixbuf_xlib-2.0 >libGdk_pixbuf_xlib.sgml
	$(TOP)/mklibspec -a S390 -v `cat $(TOP)/target_version` -c 2 -l libgdk-x11-2.0 >libGdk-x11.sgml
	$(TOP)/mklibspec -a S390 -v `cat $(TOP)/target_version` -c 2 -l libgtk-x11-2.0 >libGtk-x11.sgml
	$(TOP)/mklibspec -a S390 -v `cat $(TOP)/target_version` -c 2 -l libpangocairo-1.0 >libPangoCairo.sgml
	$(TOP)/mklibspec -a S390 -v `cat $(TOP)/target_version` -c 2 -l libgio-2.0 >libGio.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

GTK.sgml: $(TABLES) $(MANPAGES)
