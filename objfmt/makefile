
.SUFFIXES: .sgml .cpp .m4

FILES=objfmt.sgml elfsect.sgml linuxsect.sgml elfsecttypes.sgml \
	linuxsecttypes.sgml
TABLES=

.cpp.sgml:
	cpp -I../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	./mksectiontable Sname='ELF Specification' numcols=4 >elfsect.sgml
	./mksectiontable Sname='LSB' dodesc=Y >linuxsect.sgml
	./mksecttypestable Sname='ELF Specification' numcols=4 >elfsecttypes.sgml
	./mksecttypestable Sname='LSB' dodesc=Y >linuxsecttypes.sgml

clean:
	rm -f $(FILES) $(TABLES)

objfmt.sgml: elfsect.sgml linuxsect.sgml elfsecttypes.sgml  linuxsecttypes.sgml
