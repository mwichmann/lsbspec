#
#	Linux Standard Base, http://www.linuxbase.org/
#	George Kraft IV, gk4@us.ibm.com, 3/9/2000
#
#	This LSB Makefile was derived from one written by Stuart Anderson
#

.SUFFIXES: .sgml .cpp .m4

FILES=command.sgml
TABLES= cmdsutils.sgml

.cpp.sgml:
	cpp -I../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	./mkcmdtable  > cmdsutils.sgml

clean:
	rm -f $(FILES) $(TABLES)

command.sgml: $(TABLES)

