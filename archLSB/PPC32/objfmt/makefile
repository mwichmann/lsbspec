
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
	../../../mksectiontable -a PPC32 -s 'PPC32 ABI' -c 4 >elfsect.sgml
	../../../mksectiontable -a PPC32 -s 'LSB' -d >linuxsect.sgml
	../../../mksecttypestable -a PPC32 -s 'PPC32 ABI' -c 4 >elfsecttypes.sgml
	../../../mksecttypestable -a PPC32 -s 'LSB' -d >linuxsecttypes.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


objfmt.sgml: elfsect.sgml linuxsect.sgml elfsecttypes.sgml  linuxsecttypes.sgml
