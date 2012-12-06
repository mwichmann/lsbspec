TOP=../..

.SUFFIXES: .sgml .m4

FILES= perl.sgml
TABLES=modules.sgml #modman.sgml
BASEFILES=$(filter-out $(TABLES) $(FILES), $(shell ls *.sgml))

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mkilmodtable  -v `cat $(TOP)/target_version` -l "Perl" > modules.sgml
	#$(TOP)/mkilmodlist -v `cat $(TOP)/target_version` -l "Perl" > modman.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


perl.sgml: $(TABLES) $(BASEFILES)
