TOP=../../..

.SUFFIXES: .sgml .m4

FILES=libasound.sgml
TABLES= asound.sgml 

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibspec -a All -v `cat $(TOP)/target_version` -c 3 -l libasound >asound.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


libasound.sgml: asound.sgml
