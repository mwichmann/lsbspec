TOP=../../..

.SUFFIXES: .sgml .cpp .m4

FILES=dynlnk.sgml dyntag.sgml linuxtag.sgml
TABLES=

.m4.sgml:
	m4 -P $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mkdyntagtable -a PPC32 -s 'PPC32 ABI' -v `cat ../../../LSB/target_version.PPC32` -c 4 >dyntag.sgml
	../../../mkdyntagtable -a PPC32 -s 'LSB' -v `cat ../../../LSB/target_version.PPC32` -d >linuxtag.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


dynlnk.sgml: dyntag.sgml linuxtag.sgml
