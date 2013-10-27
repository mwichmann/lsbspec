TOP=../../..

.SUFFIXES: .sgml .m4

FILES=liblist.sgml
TABLES=graphextlist.sgml

.m4.sgml:
	m4 -P $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibapnd -a All -m LSB_Graphics_Ext -v `cat $(TOP)/target_version` >graphextlist.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

