
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
	../../../mksecttypestable -a IA32 -s 'IA32-ABI-4' -t 'ELF Section Types' >elfsecttypes.sgml
	../../../mksecttypestable -a IA32 -s 'LSB' -t 'Additional Section Types' >linuxsecttypes.sgml
	../../../mksectiontable -a IA32 -s 'IA32-ABI-4' -t 'ELF Special Sections' -v `cat ../../../LSB/target_version.IA32` >elfsect.sgml
	../../../mksectiontable -a IA32 -s 'LSB' -t 'Additional Special Sections' -v `cat ../../../LSB/target_version.IA32` >linuxsect.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


objfmt.sgml: elfsect.sgml linuxsect.sgml elfsecttypes.sgml  linuxsecttypes.sgml
