TOP=../../..

.SUFFIXES: .sgml .m4

FILES=intro.sgml
TABLES= standards.sgml references.sgml libraries.sgml 

.m4.sgml:
	m4 -P -Uindex -Uformat -DARCH=S390 $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mkstandardsgmltable -a S390 -t Standard -v `cat $(TOP)/target_version` -m LSB_Graphics,LSB_Toolkit_Gtk,LSB_Toolkit_Qt,LSB_Multimedia,LSB_Toolkit_Independent -s "'XdgMenu','XdgDesktop','XdgIcon','XdgBasedir'" > standards.sgml
	$(TOP)/mkstandardsgmltable -a S390 -t Reference -v `cat $(TOP)/target_version` -m LSB_Graphics,LSB_Toolkit_Gtk,LSB_Toolkit_Qt,LSB_Multimedia,LSB_Toolkit_Independent -s "'XdgMenu','XdgDesktop','XdgIcon','XdgBasedir'" > references.sgml
	$(TOP)/mklibsgmltable -a S390 -v `cat $(TOP)/target_version` -m LSB_Graphics,LSB_Toolkit_Gtk,LSB_Toolkit_Qt,LSB_Multimedia,LSB_Toolkit_Independent > libraries.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES) intro.m4

# change this if the book needs something other than the common intro.m4
intro.m4:: 
	cp ../../generic/intro/$@ .

cxxintro.m4::
	cp ../../generic/intro/$@ .

intro.sgml: ../../generic/intro/genscope.sgml ../../generic/intro/modscope.sgml $(TABLES)
cxxintro.sgml: cxxstandards.sgml cxxlibraries.sgml
