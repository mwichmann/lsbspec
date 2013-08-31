TOP=../../..

.SUFFIXES: .sgml .cpp .m4

FILES=command.sgml
TABLES= cmdsutils.sgml cmdman.sgml
BASEFILES=$(filter-out $(TABLES) $(FILES), $(shell ls *.sgml))

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mkcmdtable  -v `cat $(TOP)/target_version` -m LSB_Printing > cmdsutils.sgml
	$(TOP)/mkcmdlist -v `cat $(TOP)/target_version` -m LSB_Printing > cmdman.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

command.sgml: $(TABLES) $(BASEFILES)
