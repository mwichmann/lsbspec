TOP=../..

.SUFFIXES: .sgml .m4

FILES=intro.sgml
TABLES= corelibs.sgml pscorelibs.sgml desklibs.sgml imaglibs.sgml langlibs.sgml
SCOPES=scope.sgml
CORESUBMOD="LSB_Base,LSB_Security"
# notice LSB_Toolkit_Independent has no current libs - leave out while so
DESKSUBMOD="LSB_Graphics,LSB_Toolkit_Gtk,LSB_Toolkit_Gtk,LSB_Toolkit_Qt,LSB_Multimedia"
IMAGSUBMOD="LSB_Scan,LSB_Print"
LANGSUBMOD="LSB_XML"


.m4.sgml:
	m4 -P -Uindex -Uformat -DARCH=All -DCORE=1 $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibsgmltable -a All -v `cat $(TOP)/target_version` \
	-m $(CORESUBMOD) >corelibs.sgml
	$(TOP)/mklibsgmltable -a None -v `cat $(TOP)/target_version` \
	-m $(CORESUBMOD) >pscorelibs.sgml
	$(TOP)/mklibsgmltable -a All -v `cat $(TOP)/target_version` \
	-m $(DESKSUBMOD) > desklibs.sgml
	$(TOP)/mklibsgmltable -a All -v `cat $(TOP)/target_version` \
	-m $(IMAGSUBMOD) >imaglibs.sgml
	$(TOP)/mklibsgmltable -a All -v `cat $(TOP)/target_version` \
	-m $(LANGSUBMOD) >langlibs.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

libraries.sgml: $(TABLES)
intro.sgml: $(SCOPES) libraries.sgml
