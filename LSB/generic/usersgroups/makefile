
.SUFFIXES: .sgml .cpp .m4

FILES = usersgroups.sgml
#TABLES = usersgroupscmds.sgml usersgroupsints.sgml

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uformat -Uindex $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

usersgroups.sgml:  $(TABLES)

