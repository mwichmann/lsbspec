
.SUFFIXES: .sgml .cpp .m4

FILES=objfmt.sgml elfsect.sgml linuxsect.sgml elfsecttypes.sgml \
	linuxsecttypes.sgml
TABLES=

.cpp.sgml:
	cpp -I../../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mksectiontable -a IA32 -s 'IA32-ABI-4' -c 4 >elfsect.sgml
	../../../mksectiontable -a IA32 -s 'LSB' -d >linuxsect.sgml
	../../../mksecttypestable -a IA32 -s 'IA32-ABI-4' -c 4 >elfsecttypes.sgml
	../../../mksecttypestable -a IA32 -s 'LSB' -d >linuxsecttypes.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


objfmt.sgml: elfsect.sgml linuxsect.sgml elfsecttypes.sgml  linuxsecttypes.sgml
