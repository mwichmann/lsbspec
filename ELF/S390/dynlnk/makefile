
.SUFFIXES: .sgml .cpp .m4

FILES=dynlnk.sgml dyntag.sgml linuxtag.sgml
TABLES=

.cpp.sgml:
	cpp -I../../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -P $*.m4 >$@

all: $(FILES) $(TABLES)

source: all

gensrc:
	../../../mkdyntagtable -a S390 -s 'S390 ABI' -v `cat ../../../LSB/version.S390` -c 4 >dyntag.sgml
	../../../mkdyntagtable -a S390 -s 'LSB' -v `cat ../../../LSB/version.S390` -d >linuxtag.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


dynlnk.sgml: dyntag.sgml linuxtag.sgml
