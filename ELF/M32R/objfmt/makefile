
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
	../../../mksecttypestable -a M32R -s 'M32R ABI' -t 'ELF Section Types' >elfsecttypes.sgml
	../../../mksecttypestable -a M32R -s 'LSB' -t 'Additional Section Types' >linuxsecttypes.sgml
	../../../mksectiontable -a M32R -s 'M32R ABI' -t 'ELF Special Sections' >elfsect.sgml
	../../../mksectiontable -a M32R -s 'LSB' -t 'Additional Special Sections'  >linuxsect.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


objfmt.sgml: elfsect.sgml linuxsect.sgml elfsecttypes.sgml  linuxsecttypes.sgml
