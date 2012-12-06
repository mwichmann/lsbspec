TOP=../../..

.SUFFIXES: .sgml .m4

FILES=libxml2.sgml
TABLES= xml2.sgml 

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibspec -a All -v `cat $(TOP)/target_version` -c 3 -l libxml2 >xml2.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


libxml2.sgml: xml2.sgml
