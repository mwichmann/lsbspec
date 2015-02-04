TOP=../../..

.SUFFIXES: .sgml .m4

MANPAGES=gtk_button_set_image.sgml gtk_button_get_image.sgml \
	g_cache_value_foreach.sgml g_type_name_from_class.sgml \
	g_type_name_from_instance.sgml g_value_set_instance.sgml \
	gtk_toolbar_get_tooltips.sgml gtk_toolbar_set_tooltips.sgml

FILES=GTK3.sgml

TABLES= libGdk_3.sgml libGtk_3.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat -DARCH=All $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibspec -a All -v `cat $(TOP)/target_version` -c 2 -l libgdk-3 >libGdk_3.sgml
	$(TOP)/mklibspec -a All -v `cat $(TOP)/target_version` -c 2 -l libgtk-3 >libGtk_3.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

GTK3.sgml: $(TABLES) $(MANPAGES)
