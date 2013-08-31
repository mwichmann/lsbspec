TOP=../../..

.SUFFIXES: .sgml .cpp .m4

FILES=objfmt.sgml elfsect.sgml linuxsect.sgml elfsecttypes.sgml \
	linuxsecttypes.sgml
TABLES=

.m4.sgml:
	m4 -P $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mksecttypestable -a IA32 -s 'IA32-ABI-4' -t 'ELF Section Types' -v `cat $(TOP)/target_version` >elfsecttypes.sgml
	$(TOP)/mksecttypestable -a IA32 -s 'LSB' -t 'Additional Section Types' -v `cat $(TOP)/target_version` >linuxsecttypes.sgml
	$(TOP)/mksectiontable -a IA32 -s 'IA32-ABI-4' -t 'ELF Special Sections' -v `cat $(TOP)/target_version` >elfsect.sgml
	$(TOP)/mksectiontable -a IA32 -s 'LSB' -t 'Additional Special Sections' -v `cat $(TOP)/target_version` >linuxsect.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


objfmt.sgml: elfsect.sgml linuxsect.sgml elfsecttypes.sgml  linuxsecttypes.sgml
