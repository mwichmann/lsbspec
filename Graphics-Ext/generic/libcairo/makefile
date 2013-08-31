TOP=../../..

.SUFFIXES: .sgml .m4

FILES=libcairo.sgml
TABLES= cairo.sgml 

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a All -v `cat ../../../LSB/target_version.generic` -c 3 -l libcairo >cairo.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

libcairo.sgml: cairo.sgml
