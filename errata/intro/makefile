TOP=../..

.SUFFIXES: .sgml .m4

FILES=intro.sgml
TABLES=standards.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mkstandardsgmltable -v `cat $(TOP)/target_version` -s "'SUSV3'" >standards.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


