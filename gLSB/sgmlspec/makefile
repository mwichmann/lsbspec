
.SUFFIXES: .sgml .cpp .m4

FILES= sgmlspec.sgml
TABLES=

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

usersgroups.sgml:  $(TABLES)

