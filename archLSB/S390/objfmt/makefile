
.SUFFIXES: .sgml .cpp .m4

FILES=objfmt.sgml elfsect.sgml 
TABLES=

.cpp.sgml:
	cpp -I../../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mksectiontable -a S390 -s 'S390 ABI' -t 'ELF Special Sections' >elfsect.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


objfmt.sgml: elfsect.sgml
