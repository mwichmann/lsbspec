TOP=../../..
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

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mkcmdtable -m LSB_Graphics_Ext -v `cat ../../../LSB/target_version.generic`  > cmdsutils.sgml
	../../../mkcmdlist  -m LSB_Graphics_Ext -v `cat ../../../LSB/target_version.generic` > cmdman.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

command.sgml: $(TABLES) $(BASEFILES)
