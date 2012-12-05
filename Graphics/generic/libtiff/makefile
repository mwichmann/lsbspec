
.SUFFIXES: .sgml .m4

FILES=libtiff.sgml
TABLES= tiff.sgml 

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a All -v `cat ../../../LSB/target_version.generic` -c 3 -l libtiff >tiff.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


libtiff.sgml: tiff.sgml
#libtiff.sgml: $(MANPAGES)
