TOP=../../..

.SUFFIXES: .sgml .m4

FILES=liblist.sgml
TABLES=gtk3list.sgml

.m4.sgml:
	m4 -P -DARCH=All $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibapnd -a All -m LSB_Toolkit_Gtk3 -v `cat $(TOP)/target_version` >gtk3list.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

