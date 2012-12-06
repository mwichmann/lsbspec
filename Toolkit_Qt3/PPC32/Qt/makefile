TOP=../../..

.SUFFIXES: .sgml .m4

FILES=Qt3.sgml
TABLES= libqt_mt.sgml 

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibspec -a PPC32 -v `cat $(TOP)/target_version` -c 2 -l libqt-mt >libqt_mt.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

Qt3.sgml: libqt_mt.sgml 

