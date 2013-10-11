TOP=../../..

.SUFFIXES: .sgml .m4

FILES=liblist.sgml
TABLES=qtlist.sgml

.m4.sgml:
	m4 -P $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibapnd -a PPC32 -m LSB_Toolkit_Qt -v `cat $(TOP)/target_version` >qtlist.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES) liblist.m4

# change this if all the books stop sharing the same m4 file
liblist.m4::
	cp ../../generic/appendix/$@ .
