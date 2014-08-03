TOP=../../..

.SUFFIXES: .sgml .m4

FILES=liblist.sgml
TABLES=baselist.sgml
LIBLIST=../../generic/appendix/liblist.m4

.m4.sgml:
	m4 -P -DARCH=PPC32 $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibapnd -a PPC32 -m LSB_Base -v `cat $(TOP)/target_version` | sed -e 's/ID=app-libgcc_s/ID=app-libgcc-s/' >baselist.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

# change this if the book needs something other than the common liblist.m4
liblist.sgml: $(TABLES) $(LIBLIST)
	m4 -P -DARCH=PPC32 $(LIBLIST) > $@
