#
#	Linux Standard Base, http://www.linuxbase.org/
#	George Kraft IV, gk4@us.ibm.com, 3/9/2000
#
#	This LSB Makefile was derived from one written by Stuart Anderson
#

.SUFFIXES: .sgml .cpp .m4

FILES=command.sgml
TABLES= cmdsutils.sgml cmdman.sgml
BASEFILES=$(filter-out $(TABLES) $(FILES), $(shell ls *.sgml))

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uindex -Uformat $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mkcmdtable  > cmdsutils.sgml
	../../../mkcmdlist  > cmdman.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

command.sgml: $(TABLES) $(BASEFILES)
