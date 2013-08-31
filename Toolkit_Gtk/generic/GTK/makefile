TOP=../../..

.SUFFIXES: .sgml .m4

MANPAGES=gtk_button_set_image.sgml gtk_button_get_image.sgml \
	g_cache_value_foreach.sgml g_type_name_from_class.sgml \
	g_type_name_from_instance.sgml g_value_set_instance.sgml \
	gtk_toolbar_get_tooltips.sgml gtk_toolbar_set_tooltips.sgml

FILES=GTK.sgml
TABLES= libGlib.sgml libGobject.sgml libGmodule.sgml libGthread.sgml libAtk.sgml libPango.sgml libPangoxft.sgml libPangoft2.sgml libGdk_pixbuf.sgml libGdk_pixbuf_xlib.sgml libGdk-x11.sgml libGtk-x11.sgml libPangoCairo.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a All -v `cat ../../../LSB/target_version.generic` -c 2 -l libglib-2.0 >libGlib.sgml
	../../../mklibspec -a All -v `cat ../../../LSB/target_version.generic` -c 2 -l libgobject-2.0 >libGobject.sgml
	../../../mklibspec -a All -v `cat ../../../LSB/target_version.generic` -c 2 -l libgmodule-2.0 >libGmodule.sgml
	../../../mklibspec -a All -v `cat ../../../LSB/target_version.generic` -c 2 -l libgthread-2.0 >libGthread.sgml
	../../../mklibspec -a All -v `cat ../../../LSB/target_version.generic` -c 2 -l libatk-1.0 >libAtk.sgml
	../../../mklibspec -a All -v `cat ../../../LSB/target_version.generic` -c 2 -l libpango-1.0 >libPango.sgml
	../../../mklibspec -a All -v `cat ../../../LSB/target_version.generic` -c 2 -l libpangoxft-1.0 >libPangoxft.sgml
	../../../mklibspec -a All -v `cat ../../../LSB/target_version.generic` -c 2 -l libpangoft2-1.0 >libPangoft2.sgml
	../../../mklibspec -a All -v `cat ../../../LSB/target_version.generic` -c 2 -l libgdk_pixbuf-2.0 >libGdk_pixbuf.sgml
	../../../mklibspec -a All -v `cat ../../../LSB/target_version.generic` -c 2 -l libgdk_pixbuf_xlib-2.0 >libGdk_pixbuf_xlib.sgml
	../../../mklibspec -a All -v `cat ../../../LSB/target_version.generic` -c 2 -l libgdk-x11-2.0 >libGdk-x11.sgml
	../../../mklibspec -a All -v `cat ../../../LSB/target_version.generic` -c 2 -l libgtk-x11-2.0 >libGtk-x11.sgml
	../../../mklibspec -a All -v `cat ../../../LSB/target_version.generic` -c 2 -l libpangocairo-1.0 >libPangoCairo.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

GTK.sgml: $(TABLES) $(MANPAGES)
