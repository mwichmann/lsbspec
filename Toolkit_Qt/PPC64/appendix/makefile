TOP=../../..

.SUFFIXES: .sgml .m4

FILES=liblist.sgml
TABLES=qtlist.sgml
LIBLIST=../../generic/appendix/liblist.m4

.m4.sgml:
	m4 -P -DARCH=PPC64 $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibapnd -a PPC64 -m LSB_Toolkit_Qt -v `cat $(TOP)/target_version` >qtlist.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

# change this if the book needs something other than the common liblist.m4
liblist.sgml: $(TABLES) $(LIBLIST)
	m4 -P -DARCH=PPC64 $(LIBLIST) > $@
