
.SUFFIXES: .sgml .cpp .m4

#MANPAGES=_XtCopyFromArg.sgml _XtInheritTranslations.sgml _XtInherit.sgml \
	_XtIsSubclassOf.sgml

FILES=libpng.sgml
TABLES= png.sgml 

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a All -c 4 -l libpng12 >png.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


libpng.sgml: png.sgml
#GTK.sgml: $(MANPAGES)
