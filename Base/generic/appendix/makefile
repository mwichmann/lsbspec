TOP=../../..

.SUFFIXES: .sgml .m4

FILES=liblist.sgml
TABLES=baselist.sgml

.m4.sgml:
	m4 -P -DARCH=All $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibapnd -a All -m LSB_Base -v `cat $(TOP)/target_version` >baselist.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

