
.SUFFIXES: .sgml .cpp .m4

FILES=utillib.sgml
TABLES=

.cpp.sgml:
	cpp -I../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 $*.m4 >$@

all: $(FILES) $(TABLES)

clean:
	rm -f $(FILES) $(TABLES)

utillib.sgml: 
