TOP=../../..

.SUFFIXES: .sgml .m4

FILES=liblist.sgml
TABLES=gtklist.sgml qtlist.sgml qt3list.sgml

.m4.sgml:
	m4 -P $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibapnd -a IA64 -m LSB_Toolkit_Gtk -v `cat $(TOP)/target_version` >gtklist.sgml
	$(TOP)/mklibapnd -a IA64 -m LSB_Toolkit_Qt -v `cat $(TOP)/target_version` >qtlist.sgml
	$(TOP)/mklibapnd -a IA64 -m LSB_Toolkit_Qt3 -v `cat $(TOP)/target_version` >qt3list.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

