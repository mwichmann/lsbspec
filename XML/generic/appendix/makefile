TOP=../../..

.SUFFIXES: .sgml .m4

FILES=liblist.sgml
TABLES=xmllist.sgml

.m4.sgml:
	m4 -P $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibapnd -a All -m LSB_XML -v `cat $(TOP)/target_version` >xmllist.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

