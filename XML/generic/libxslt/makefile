TOP=../../..

.SUFFIXES: .sgml .m4

FILES=libxslt.sgml
TABLES= xslt.sgml 

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibspec -a All -v `cat $(TOP)/target_version` -c 3 -l libxslt >xslt.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


libxslt.sgml: xslt.sgml
