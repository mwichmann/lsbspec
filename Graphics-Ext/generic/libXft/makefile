
.SUFFIXES: .sgml .cpp .m4

FILES=libXft.sgml
TABLES= Xft.sgml 

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a All -v `cat ../../../LSB/version.generic` -c 3 -l libXft >Xft.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


libXft.sgml: Xft.sgml
#libXft.sgml: $(MANPAGES)
