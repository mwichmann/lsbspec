
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
	../../../mksectiontable -a IA64 -s 'IA64 ABI' -c 4 >elfsect.sgml
	../../../mksectiontable -a IA64 -s 'LSB' -d >linuxsect.sgml
	../../../mksecttypestable -a IA64 -s 'IA64 ABI' -c 4 >elfsecttypes.sgml
	../../../mksecttypestable -a IA64 -s 'LSB' -d >linuxsecttypes.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


objfmt.sgml: elfsect.sgml linuxsect.sgml elfsecttypes.sgml  linuxsecttypes.sgml
