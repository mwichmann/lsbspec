TOP=../../..

.SUFFIXES: .sgml .cpp .m4

FILES=objfmt.sgml elfsect.sgml linuxsect.sgml elfsecttypes.sgml \
	linuxsecttypes.sgml
TABLES=

.m4.sgml:
	m4 -P $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mksecttypestable -a PPC32 -s 'PPC32 ABI' -t 'ELF Section Types' -v `cat ../../../LSB/target_version.generic` >elfsecttypes.sgml
	../../../mksecttypestable -a PPC32 -s 'LSB' -t 'Additional Section Types' -v `cat ../../../LSB/target_version.generic` >linuxsecttypes.sgml
	../../../mksectiontable -a PPC32 -s 'PPC32 ABI' -t 'ELF Special Sections' -v `cat ../../../LSB/target_version.PPC32` >elfsect.sgml
	../../../mksectiontable -a PPC32 -s 'LSB' -t 'Additional Special Sections' -v `cat ../../../LSB/target_version.PPC32` >linuxsect.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


objfmt.sgml: elfsect.sgml linuxsect.sgml elfsecttypes.sgml  linuxsecttypes.sgml
