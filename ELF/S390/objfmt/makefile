
.SUFFIXES: .sgml .cpp .m4

FILES=objfmt.sgml elfsect.sgml linuxsect.sgml elfsecttypes.sgml \
	linuxsecttypes.sgml
TABLES=

.cpp.sgml:
	cpp -I../../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -P $*.m4 >$@

all: $(FILES) $(TABLES)

source: all

gensrc:
	../../../mksecttypestable -a S390 -s 'S390 ABI' -t 'ELF Section Types' -v `cat ../../../LSB/target_version.generic` >elfsecttypes.sgml
	../../../mksecttypestable -a S390 -s 'LSB' -t 'Additional Section Types' -v `cat ../../../LSB/target_version.generic` >linuxsecttypes.sgml
	../../../mksectiontable -a S390 -s 'S390 ABI' -t 'ELF Special Sections' -v `cat ../../../LSB/target_version.S390` >elfsect.sgml
	../../../mksectiontable -a S390 -s 'LSB' -t 'Additional Special Sections' -v `cat ../../../LSB/target_version.S390` >linuxsect.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


objfmt.sgml: elfsect.sgml linuxsect.sgml elfsecttypes.sgml  linuxsecttypes.sgml
