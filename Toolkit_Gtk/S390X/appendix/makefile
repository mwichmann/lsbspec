TOP=../../..

.SUFFIXES: .sgml .m4

FILES=liblist.sgml
TABLES=gtklist.sgml

.m4.sgml:
	m4 -P $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibapnd -a S390X -m LSB_Toolkit_Gtk -v `cat $(TOP)/target_version` >gtklist.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES) liblist.m4

# change this if all the books stop sharing the same m4 file
liblist.m4::
	cp ../../generic/appendix/$@ .
