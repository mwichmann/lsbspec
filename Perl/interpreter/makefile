TOP=../..

.SUFFIXES: .sgml .m4

FILES= perl.sgml
TABLES=modules.sgml #modman.sgml
BASEFILES=$(filter-out $(TABLES) $(FILES), $(shell ls *.sgml))

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../mkilmodtable  -v `cat ../../LSB/target_version.generic` -l "Perl" > modules.sgml
	#../../mkilmodlist -v `cat ../../LSB/target_version.generic` -l "Perl" > modman.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


perl.sgml: $(TABLES) $(BASEFILES)
