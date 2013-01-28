TOP=../../..

.SUFFIXES: .sgml .m4

FILES=libcairo-script.sgml
TABLES= cairo-script.sgml 

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibspec -a All -v `cat $(TOP)/target_version` -c 3 -l libcairo-script-interpreter >cairo-script.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

libcairo-script.sgml: cairo-script.sgml
