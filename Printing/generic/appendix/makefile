TOP=../../..

.SUFFIXES: .sgml .m4

FILES=liblist.sgml
TABLES=printlist.sgml

.m4.sgml:
	m4 -P $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibapnd -a All -m LSB_Printing -v `cat $(TOP)/target_version` >printlist.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

