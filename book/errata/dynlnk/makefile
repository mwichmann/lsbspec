
.SUFFIXES: .sgml .cpp .m4

GENSRC=dyntag_IA64.sgml linuxtag_IA64.sgml
FILES=dynlnk.sgml $(GENSRC)
TABLES=

.m4.sgml:
	m4 $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mkdyntagtable -a IA64 -s 'IA64 ABI' -v `cat ../../../LSB/version.errata` -c 4 >dyntag_IA64.sgml
	../../../mkdyntagtable -a IA64 -s 'LSB' -v `cat ../../../LSB/version.errata` -d >linuxtag_IA64.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


dynlnk.sgml: dynlnk.m4 $(GENSRC)
