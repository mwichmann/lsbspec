TOP=../../..

.SUFFIXES: .sgml .m4

FILES=liblist.sgml
TABLES=gtklist.sgml qtlist.sgml #qt3list.sgml
LIBLIST=../../generic/appendix/liblist.m4

.m4.sgml:
	m4 -P -DARCH=x86_64 $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibapnd -a x86-64 -m LSB_Toolkit_Gtk -v `cat $(TOP)/target_version` >gtklist.sgml
	$(TOP)/mklibapnd -a x86-64 -m LSB_Toolkit_Qt -v `cat $(TOP)/target_version` >qtlist.sgml
	#$(TOP)/mklibapnd -a x86-64 -m LSB_Toolkit_Qt3 -v `cat $(TOP)/target_version` >qt3list.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

# change this if the book needs something other than the common liblist.m4
liblist.sgml: $(TABLES) $(LIBLIST)
	m4 -P -DARCH=x86-64 $(LIBLIST) > $@
