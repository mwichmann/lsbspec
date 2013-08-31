TOP=../../..

.SUFFIXES: .sgml .cpp .m4

FILES=dynlnk.sgml dyntag.sgml linuxtag.sgml
TABLES=

.m4.sgml:
	m4 -P $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mkdyntagtable -a PPC64 -s 'PPC64 ABI' -v `cat ../../../LSB/target_version.PPC64` -c 4 >dyntag.sgml
	../../../mkdyntagtable -a PPC64 -s 'LSB' -v `cat ../../../LSB/target_version.PPC64` -d >linuxtag.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


dynlnk.sgml: dynlnk.m4 dyntag.sgml linuxtag.sgml
