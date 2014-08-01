TOP=../..

.SUFFIXES: .sgml .m4

FILES=intro.sgml
TABLES=standards.sgml libraries.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

# do not split standard and reference for this book.
# one of the key items is the cups API, and it is listed as 'Reference'
gensrc:
	$(TOP)/mkstandardsgmltable -a All -v `cat $(TOP)/target_version` -m LSB_Print,LSB_Scan >standards.sgml
	$(TOP)/mklibsgmltable -a All -v `cat $(TOP)/target_version` -m LSB_Print,LSB_Scan >libraries.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

intro.sgml: genscope.sgml modscope.sgml $(TABLES)
