TOP=../../..

.SUFFIXES: .sgml .m4

FILES=objfmt.sgml elfsect.sgml linuxsect.sgml elfsecttypes.sgml \
	linuxsecttypes.sgml
TABLES=

.m4.sgml:
	m4 -P $*.m4 >$@

all: $(FILES) $(TABLES)

source: all

gensrc:
	$(TOP)/mksecttypestable -a S390X -s 'S390X ABI' -t 'ELF Section Types' -v `cat $(TOP)/target_version` >elfsecttypes.sgml
	$(TOP)/mksecttypestable -a S390X -s 'LSB' -t 'Additional Section Types' -v `cat $(TOP)/target_version` >linuxsecttypes.sgml
	$(TOP)/mksectiontable -a S390X -s 'S390X ABI' -t 'ELF Special Sections' -v `cat $(TOP)/target_version` >elfsect.sgml
	$(TOP)/mksectiontable -a S390X -s 'LSB' -t 'Additional Special Sections' -v `cat $(TOP)/target_version` >linuxsect.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


objfmt.sgml: elfsect.sgml linuxsect.sgml elfsecttypes.sgml  linuxsecttypes.sgml
