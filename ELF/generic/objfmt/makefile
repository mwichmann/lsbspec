
.SUFFIXES: .sgml .cpp .m4

FILES=objfmt.sgml elfsect.sgml linuxsect.sgml elfsecttypes.sgml \
	linuxsecttypes.sgml
TABLES=

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mksecttypestable -a All -s 'ABIUpdate' -t 'ELF Section Types' >elfsecttypes.sgml
	../../../mksecttypestable -a All -s 'LSB' -t 'Additional Section Types' >linuxsecttypes.sgml
	../../../mksectiontable -a All -s 'ABIUpdate' -t 'ELF Special Sections' >elfsect.sgml
	../../../mksectiontable -a All -s 'LSB' -t 'Additional Special Sections' >linuxsect.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


objfmt.sgml: abinote.sgml ehframehdr.sgml elfsect.sgml elfsecttypes.sgml
objfmt.sgml: linuxsect.sgml linuxsecttypes.sgml symversion.sgml dwarfext.sgml
