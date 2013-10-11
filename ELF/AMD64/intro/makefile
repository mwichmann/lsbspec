TOP=../../..

.SUFFIXES: .sgml .m4

FILES=intro.sgml
TABLES=standards.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mkstandardsgmltable -a x86-64 -t Standard -m LSB_Base -v `cat $(TOP)/target_version` >standards.sgml
	$(TOP)/mkstandardsgmltable -a x86-64 -t Reference -m LSB_Base -v `cat $(TOP)/target_version` >references.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES) intro.m4

# change this if all the books stop sharing the same m4 file
intro.m4::
	cp ../../generic/intro/$@ .

intro.sgml: $(TABLES)
