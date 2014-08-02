TOP=../../..

.SUFFIXES: .sgml .m4

FILES=intro.sgml
TABLES= standards.sgml references.sgml libraries.sgml 
SCOPES=../../generic/intro/genscope.sgml ../../generic/intro/modscope.sgml
INTRO=../../generic/intro/intro.m4

.m4.sgml:
	m4 -P -Uindex -Uformat -DARCH=PPC32 $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mkstandardsgmltable -a PPC32 -t Standard -v `cat $(TOP)/target_version` -m LSB_Graphics,LSB_Toolkit_Gtk,LSB_Toolkit_Qt,LSB_Multimedia,LSB_Toolkit_Independent -s "'XdgMenu','XdgDesktop','XdgIcon','XdgBasedir'" > standards.sgml
	$(TOP)/mkstandardsgmltable -a PPC32 -t Reference -v `cat $(TOP)/target_version` -m LSB_Graphics,LSB_Toolkit_Gtk,LSB_Toolkit_Qt,LSB_Multimedia,LSB_Toolkit_Independent -s "'XdgMenu','XdgDesktop','XdgIcon','XdgBasedir'" > references.sgml
	$(TOP)/mklibsgmltable -a PPC32 -v `cat $(TOP)/target_version` -m LSB_Graphics,LSB_Toolkit_Gtk,LSB_Toolkit_Qt,LSB_Multimedia,LSB_Toolkit_Independent > libraries.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

# change this if the book needs something other than the common intro.m4
intro.sgml: $(SCOPES) $(TABLES) $(INTRO)
	m4 -P -Uindex -Uformat -DARCH=PPC32 $(INTRO) > $@

