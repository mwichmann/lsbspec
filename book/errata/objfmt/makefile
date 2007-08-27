
.SUFFIXES: .sgml .cpp .m4

FILES  = objfmt.sgml 
TABLES = ia64sect.sgml ppc32sect.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../mksectiontable -a IA64 -s 'LSB' -t 'IA64 Additional Special Sections' -v `cat ../../LSB/version.errata` >ia64sect.sgml
	../../mksectiontable -a PPC32 -s 'LSB' -t 'PPC32 Additional Special Sections' -v `cat ../../LSB/version.errata` >ppc32sect.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


objfmt.sgml: objfmt.m4 ia64sect.sgml ppc32sect.sgml
