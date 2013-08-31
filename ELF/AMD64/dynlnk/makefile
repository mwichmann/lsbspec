TOP=../../..

.SUFFIXES: .sgml .cpp .m4

FILES=dynlnk.sgml dyntag.sgml linuxtag.sgml
TABLES=

.m4.sgml:
	m4 -P $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mkdyntagtable -a x86-64 -s 'x86-64-ABI' -v `cat ../../../LSB/target_version.AMD64` -c 4 >dyntag.sgml
	../../../mkdyntagtable -a x86-64 -s 'LSB' -v `cat ../../../LSB/target_version.AMD64` -d >linuxtag.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


dynlnk.sgml: dyntag.sgml linuxtag.sgml
