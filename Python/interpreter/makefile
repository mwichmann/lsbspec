TOP=../..

.SUFFIXES: .sgml .m4

FILES= python.sgml
TABLES=modules.sgml #modman.sgml
BASEFILES=$(filter-out $(TABLES) $(FILES), $(shell ls *.sgml))

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mkilmodtable  -v `cat $(TOP)/target_version` -l "Python" > modules.sgml
	#$(TOP)/mkilmodlist -v `cat $(TOP)/target_version` -l "Python" > modman.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


python.sgml: $(TABLES) $(BASEFILES)
