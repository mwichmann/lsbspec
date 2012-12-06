TOP=../../..

.SUFFIXES: .sgml .m4

MANPAGES=_XtCopyFromArg.sgml _XtInheritTranslations.sgml _XtInherit.sgml \
	_XtIsSubclassOf.sgml

FILES=graphlib.sgml
TABLES= libICE.sgml libSM.sgml libX11.sgml libXext.sgml libXt.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibspec -a All -v `cat $(TOP)/target_version` -c 4 -l libX11 >libX11.sgml
	$(TOP)/mklibspec -a All -v `cat $(TOP)/target_version` -c 4 -l libXext >libXext.sgml
	$(TOP)/mklibspec -a All -v `cat $(TOP)/target_version` -c 4 -l libICE >libICE.sgml
	$(TOP)/mklibspec -a All -v `cat $(TOP)/target_version` -c 4 -l libSM >libSM.sgml
	$(TOP)/mklibspec -a All -v `cat $(TOP)/target_version` -c 4 -l libXt >libXt.sgml
	$(TOP)/mklibspec -a All -v `cat $(TOP)/target_version` -c 4 -l libXi >libXi.sgml
	$(TOP)/mklibspec -a All -v `cat $(TOP)/target_version` -c 4 -l libXtst >libXtst.sgml
	$(TOP)/mklibspec -a All -v `cat $(TOP)/target_version` -c 4 -l libxcb >libxcb.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


graphlib.sgml: libX11.sgml libXext.sgml libICE.sgml libSM.sgml libXt.sgml libXtst.sgml libxcb.sgml
graphlib.sgml: $(MANPAGES)
