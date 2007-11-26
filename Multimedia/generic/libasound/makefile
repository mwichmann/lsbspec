
.SUFFIXES: .sgml .cpp .m4

FILES=libasound.sgml
TABLES= asound.sgml 

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a All -v `cat ../../../LSB/version.generic` -c 3 -l libasound >asound.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


libasound.sgml: asound.sgml
