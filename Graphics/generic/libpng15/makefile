.SUFFIXES: .sgml .m4

FILES=libpng15.sgml
TABLES= png15.sgml 

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a All -v `cat ../../../LSB/target_version.generic` -c 3 -l libpng15 >png15.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


libpng.sgml: png15.sgml
libpng.sgml: $(MANPAGES)
