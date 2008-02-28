
.SUFFIXES: .sgml .cpp .m4

FILES=dynlnk.sgml dyntag.sgml linuxtag.sgml
TABLES=

.cpp.sgml:
	cpp -I../../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -P $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mkdyntagtable -a IA32 -s 'IA32-ABI-4' -v `cat ../../../LSB/target_version.IA32` -c 4 >dyntag.sgml
	../../../mkdyntagtable -a IA32 -s 'LSB' -v `cat ../../../LSB/target_version.IA32` -d >linuxtag.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


dynlnk.sgml: dyntag.sgml linuxtag.sgml
