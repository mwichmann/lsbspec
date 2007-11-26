
.SUFFIXES: .sgml .cpp .m4

MANPAGES=

FILES=cupslib.sgml
GENFILES=libcups.sgml libcupsimage.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat -Usubstr $*.m4 >$@

all source: $(FILES) $(GENFILES)

gensrc:
	../../../mklibspec -a All -v `cat ../../version.generic` -l libcups >libcups.sgml
	../../../mklibspec -a All -v `cat ../../version.generic` -l libcupsimage >libcupsimage.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(GENFILES) $(FILES)

baselib.sgml: cupslib.m4 $(GENFILES) $(MANPAGES)
