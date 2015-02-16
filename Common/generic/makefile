TOP=../..

.SUFFIXES: .sgml .m4

FILES=intro.sgml
LIBTABLES= corelibs.sgml pscorelibs.sgml desklibs.sgml imaglibs.sgml \
           langlibs.sgml
CMDTABLES= corecmds.sgml langcmds.sgml
SCOPES=scope.sgml
CORESUBMOD="LSB_Base,LSB_Security"
# LSB_Toolkit_Independent has no libraries currently
DESKSUBMOD="LSB_Graphics,LSB_Toolkit_Gtk,LSB_Toolkit_Qt,LSB_Multimedia"
IMAGSUBMOD="LSB_Scan,LSB_Print"
# perl, python have no libraries currently
LANGSUBMOD="LSB_XML"


.m4.sgml:
	m4 -P -Uindex -Uformat -DARCH=All -DCORE=1 $*.m4 >$@

all source: $(FILES) $(LIBTABLES) $(CMDTABLES)

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
	$(TOP)/mkcmdtable -q -v `cat $(TOP)/target_version` \
	-m LSB_Base >corecmds.sgml
	$(TOP)/mkcmdtable -q -v `cat $(TOP)/target_version` \
	-m LSB_Perl,LSB_Python >langcmds.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

libraries.sgml: $(LIBTABLES)
commands.sgml: $(CMDTABLES)
intro.sgml: $(SCOPES) libraries.sgml commands.sgml
