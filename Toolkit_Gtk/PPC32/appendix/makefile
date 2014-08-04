TOP=../../..

.SUFFIXES: .sgml .m4

FILES=liblist.sgml
TABLES=gtklist.sgml
LIBLIST=../../generic/appendix/liblist.m4

.m4.sgml:
	m4 -P -DARCH=PPC32 $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibapnd -a PPC32 -m LSB_Toolkit_Gtk -v `cat $(TOP)/target_version` >gtklist.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

# change this if the book needs something other than the common liblist.m4
liblist.sgml: $(TABLES) $(LIBLIST)
	m4 -P -DARCH=PPC32 $(LIBLIST) > $@
