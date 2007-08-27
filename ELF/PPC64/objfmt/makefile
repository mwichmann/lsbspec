
.SUFFIXES: .sgml .cpp .m4

FILES=objfmt.sgml elfsect.sgml linuxsect.sgml elfsecttypes.sgml \
	linuxsecttypes.sgml
TABLES=

.cpp.sgml:
	cpp -I../../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -P $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mksecttypestable -a PPC64 -s 'PPC64 ABI' -t 'ELF Section Types' >elfsecttypes.sgml
	../../../mksecttypestable -a PPC64 -s 'LSB' -t 'Additional Section Types' >linuxsecttypes.sgml
	../../../mksectiontable -a PPC64 -s 'PPC64 ABI' -t 'ELF Special Sections' -v `cat ../../../LSB/version.PPC64` >elfsect.sgml
	../../../mksectiontable -a PPC64 -s 'LSB' -t 'Additional Special Sections' -v `cat ../../../LSB/version.PPC64` >linuxsect.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


objfmt.sgml: elfsect.sgml linuxsect.sgml elfsecttypes.sgml  linuxsecttypes.sgml
