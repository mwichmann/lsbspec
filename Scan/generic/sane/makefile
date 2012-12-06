TOP=../../..

.SUFFIXES: .sgml .m4

FILES=sane.sgml
TABLES=libsane.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat -Usubstr $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibspec -a All -v `cat $(TOP)/target_version` -l libsane > libsane.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES) $(FILES)

sane.sgml: sane.m4 $(TABLES) $(CUPSFILES)
