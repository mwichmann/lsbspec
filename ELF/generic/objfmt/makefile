TOP=../../..

.SUFFIXES: .sgml .m4

FILES=objfmt.sgml elfsect.sgml linuxsect.sgml elfsecttypes.sgml \
	linuxsecttypes.sgml
TABLES=

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

source: all

gensrc:
	$(TOP)/mksecttypestable -a All -s 'ABIUpdate' -t 'ELF Section Types' -v `cat $(TOP)/target_version` >elfsecttypes.sgml
	$(TOP)/mksecttypestable -a All -s 'LSB' -t 'Additional Section Types' -v `cat $(TOP)/target_version` >linuxsecttypes.sgml
	$(TOP)/mksectiontable -a All -s 'ABIUpdate' -t 'ELF Special Sections' -v `cat $(TOP)/target_version` >elfsect.sgml
	$(TOP)/mksectiontable -a All -s 'LSB' -t 'Additional Special Sections' -v `cat $(TOP)/target_version` >linuxsect.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


objfmt.sgml: abinote.sgml ehframehdr.sgml elfsect.sgml elfsecttypes.sgml
objfmt.sgml: linuxsect.sgml linuxsecttypes.sgml symversion.sgml dwarfext.sgml
objfmt.sgml: ehframe.sgml dwarfenc.sgml
