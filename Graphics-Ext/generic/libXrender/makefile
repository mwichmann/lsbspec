
.SUFFIXES: .sgml .cpp .m4

FILES=libXrender.sgml
TABLES= Xrender.sgml 

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a All -v `cat ../../../LSB/version.generic` -c 3 -l libXrender >Xrender.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


libXrender.sgml: Xrender.sgml
#libXrender.sgml: $(MANPAGES)
