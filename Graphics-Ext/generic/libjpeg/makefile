
.SUFFIXES: .sgml .cpp .m4

#MANPAGES=_XtCopyFromArg.sgml _XtInheritTranslations.sgml _XtInherit.sgml \
	_XtIsSubclassOf.sgml

FILES=libjpeg.sgml
TABLES= jpeg.sgml 

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a All -c 3 -l libjpeg >jpeg.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


libjpeg.sgml: jpeg.sgml
#GTK.sgml: $(MANPAGES)
