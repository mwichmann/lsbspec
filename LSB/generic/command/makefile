TOP=../../..

.SUFFIXES: .sgml .m4

FILES=command.sgml
TABLES= cmdsutils.sgml cmdsbuiltin.sgml cmdman.sgml
BASEFILES=$(filter-out $(TABLES) $(FILES), $(shell ls *.sgml))

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mkcmdtable  -v `cat $(TOP)/target_version` > cmdsutils.sgml
	$(TOP)/mkcmdtable -b -v `cat $(TOP)/target_version` > cmdsbuiltin.sgml
	$(TOP)/mkcmdlist -v `cat $(TOP)/target_version` > cmdman.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

command.sgml: $(TABLES) $(BASEFILES)
