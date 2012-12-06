TOP=../../..

.SUFFIXES: .sgml .m4

FILES=liblist.sgml
TABLES=graphlist.sgml gtklist.sgml qtlist.sgml mmedialist.sgml #qt3list.sgml

.m4.sgml:
	m4 -P $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibapnd -a IA64 -m LSB_Graphics -v `cat $(TOP)/target_version` >graphlist.sgml
	$(TOP)/mklibapnd -a IA64 -m LSB_Multimedia -v `cat $(TOP)/target_version` >mmedialist.sgml
	$(TOP)/mklibapnd -a IA64 -m LSB_Toolkit_Gtk -v `cat $(TOP)/target_version` >gtklist.sgml
	$(TOP)/mklibapnd -a IA64 -m LSB_Toolkit_Qt -v `cat $(TOP)/target_version` >qtlist.sgml
	#$(TOP)/mklibapnd -a IA64 -m LSB_Toolkit_Qt3 -v `cat $(TOP)/target_version` >qt3list.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

