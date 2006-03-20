
.SUFFIXES: .sgml .cpp .m4

FILES=Qt3.sgml
TABLES= libqt_mt.sgml 

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a S390 -c 2 -l libqt-mt >libqt_mt.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

Qt3.sgml: libqt_mt.sgml 

