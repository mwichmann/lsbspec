TOP=../..

.SUFFIXES: .sgml .m4

FILES=intro.sgml
TABLES= baselibs.sgml graphlibs.sgml gtklibs.sgml medialibs.sgml \
	printlibs.sgml psbaselibs.sgml qtlibs.sgml scanlibs.sgml \
	securlibs.sgml tkindeplibs.sgml xmllibs.sgml
SCOPES=scope.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat -DARCH=All -DCORE=1 $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	#$(TOP)/mkstandardsgmltable -a All -t Standard -x $(EXCLSPECS) -s $(INCLSPECS) -m LSB_Base,LSB_Security -v `cat $(TOP)/target_version` >standards.sgml
	#$(TOP)/mkstandardsgmltable -a All -t Reference -x $(EXCLSPECS) -s $(INCLSPECS) -m LSB_Base,LSB_Security -v `cat $(TOP)/target_version` >references.sgml
	$(TOP)/mklibsgmltable -a All -v `cat $(TOP)/target_version` -m LSB_Base >baselibs.sgml
	$(TOP)/mklibsgmltable -a None -v `cat $(TOP)/target_version` -m LSB_Base >psbaselibs.sgml
	$(TOP)/mklibsgmltable -a All -v `cat $(TOP)/target_version` -m LSB_Security >securlibs.sgml
	$(TOP)/mklibsgmltable -a All -v `cat $(TOP)/target_version` -m LSB_Graphics > graphlibs.sgml
	$(TOP)/mklibsgmltable -a All -v `cat $(TOP)/target_version` -m LSB_Toolkit_Gtk > gtklibs.sgml
	$(TOP)/mklibsgmltable -a All -v `cat $(TOP)/target_version` -m LSB_Toolkit_Qt > qtlibs.sgml
	$(TOP)/mklibsgmltable -a All -v `cat $(TOP)/target_version` -m LSB_Multimedia > medialibs.sgml
	$(TOP)/mklibsgmltable -a All -v `cat $(TOP)/target_version` -m LSB_Toolkit_Independent > tkindeplibs.sgml
	$(TOP)/mklibsgmltable -a All -v `cat $(TOP)/target_version` -m LSB_Scan >scanlibs.sgml
	$(TOP)/mklibsgmltable -a All -v `cat $(TOP)/target_version` -m LSB_Print >printlibs.sgml
	$(TOP)/mklibsgmltable -a All -v `cat $(TOP)/target_version` -m LSB_XML >xmllibs.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

libraries.sgml: $(TABLES)
intro.sgml: $(SCOPES) libraries.sgml
