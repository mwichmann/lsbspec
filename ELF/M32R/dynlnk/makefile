
.SUFFIXES: .sgml .cpp .m4

FILES=dynlnk.sgml dyntag.sgml linuxtag.sgml
TABLES=

.cpp.sgml:
	cpp -I../../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -P $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mkdyntagtable -a M32R -s 'M32R ABI' -v `cat ../../../LSB/version.M32R` -c 4 >dyntag.sgml
	../../../mkdyntagtable -a M32R -s 'LSB' -v `cat ../../../LSB/version.M32R` -d >linuxtag.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


dynlnk.sgml: dynlnk.m4 dyntag.sgml linuxtag.sgml
