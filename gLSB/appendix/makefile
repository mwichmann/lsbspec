
.SUFFIXES: .sgml .cpp .m4

FILES=liblist.sgml
TABLES=

.cpp.sgml:
	cpp -I../../../src/include $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../mklibapnd -a All | sed -e 's/ID=app-libgcc_s/ID=lapp-ibgcc-s/' >liblist.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

