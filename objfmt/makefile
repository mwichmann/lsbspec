
.SUFFIXES: .sgml .cpp .m4

FILES=objfmt.sgml elfsect.sgml linuxsect.sgml elfsecttypes.sgml \
	linuxsecttypes.sgml
TABLES=

.cpp.sgml:
	cpp -I../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 $*.m4 >$@

all: $(FILES) $(TABLES)

elfsect.sgml: mksectiontable
	./mksectiontable Sname='ELF Specification' numcols=4 >elfsect.sgml

linuxsect.sgml: mksectiontable
	./mksectiontable Sname='LSB' dodesc=Y >linuxsect.sgml

elfsecttypes.sgml: mksecttypestable
	./mksecttypestable Sname='ELF Specification' numcols=4 >elfsecttypes.sgml

linuxsecttypes.sgml: mksecttypestable
	./mksecttypestable Sname='LSB' dodesc=Y >linuxsecttypes.sgml

clean:
	rm -f $(FILES) $(TABLES)

objfmt.sgml: elfsect.sgml linuxsect.sgml elfsecttypes.sgml  linuxsecttypes.sgml
