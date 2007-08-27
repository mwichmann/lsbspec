
.SUFFIXES: .sgml .cpp .m4

FILES=libfreetype.sgml
TABLES= freetype.sgml 

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a All -v `cat ../../../LSB/version.generic` -c 3 -l libfreetype >freetype.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


libfreetype.sgml: freetype.sgml
#libfreetype.sgml: $(MANPAGES)
