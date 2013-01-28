TOP=../../..

.SUFFIXES: .sgml .m4

FILES=libcairo-gobject.sgml
TABLES= cairo-gobject.sgml 

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibspec -a All -v `cat $(TOP)/target_version` -c 3 -l libcairo-gobject >cairo-gobject.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

libcairo-gobject.sgml: cairo-gobject.sgml
