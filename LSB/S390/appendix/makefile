
.SUFFIXES: .sgml .cpp .m4

FILES=liblist.sgml
TABLES=

.cpp.sgml:
	cpp -I../../../../src/include $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mklibapnd -a S390 | sed -e 's/ID=app-libgcc_s/ID=app-libgcc-s/' >liblist.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

