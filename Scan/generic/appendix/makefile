TOP=../../..

.SUFFIXES: .sgml .m4

FILES=liblist.sgml
TABLES=scanlist.sgml

.m4.sgml:
	m4 -P $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibapnd -a All -m LSB_Scan -v `cat $(TOP)/target_version` >scanlist.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

