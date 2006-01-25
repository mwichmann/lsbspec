
.SUFFIXES: .sgml .cpp .m4

FILES=libfontconfig.sgml
TABLES= fontconfig.sgml 

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a All -c 3 -l libfontconfig >fontconfig.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


libfontconfig.sgml: fontconfig.sgml
#libfontconfig.sgml: $(MANPAGES)
