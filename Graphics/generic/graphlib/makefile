
.SUFFIXES: .sgml .cpp .m4

MANPAGES=_XtCopyFromArg.sgml _XtInheritTranslations.sgml _XtInherit.sgml \
	_XtIsSubclassOf.sgml

FILES=graphlib.sgml
TABLES= libICE.sgml libSM.sgml libX11.sgml libXext.sgml libXt.sgml

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a All -v `cat ../../../LSB/version.generic` -c 4 -l libX11 >libX11.sgml
	../../../mklibspec -a All -v `cat ../../../LSB/version.generic` -c 4 -l libXext >libXext.sgml
	../../../mklibspec -a All -v `cat ../../../LSB/version.generic` -c 4 -l libICE >libICE.sgml
	../../../mklibspec -a All -v `cat ../../../LSB/version.generic` -c 4 -l libSM >libSM.sgml
	../../../mklibspec -a All -v `cat ../../../LSB/version.generic` -c 4 -l libXt >libXt.sgml
	../../../mklibspec -a All -v `cat ../../../LSB/version.generic` -c 4 -l libXi >libXi.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


graphlib.sgml: libX11.sgml libXext.sgml libICE.sgml libSM.sgml libXt.sgml
graphlib.sgml: $(MANPAGES)
