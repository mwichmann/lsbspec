TOP=../../..

.SUFFIXES: .sgml .m4

FILES=liblist.sgml
TABLES=baselist.sgml
LIBLIST=../../generic/appendix/liblist.m4

.m4.sgml:
	m4 -P -DARCH=S390X $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibapnd -a S390X -m LSB_Base -v `cat $(TOP)/target_version` >baselist.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

# change this if the book needs something other than the common liblist.m4
liblist.sgml: $(TABLES) $(LIBLIST)
	m4 -P -DARCH=S390X $(LIBLIST) > $@
