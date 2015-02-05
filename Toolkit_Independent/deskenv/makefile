TOP=../..

.SUFFIXES: .sgml .m4

FILES=deskenv.sgml
TABLES=

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all source: $(FILES) $(TABLES)

#XXX mkcmdtable was built for generic/LSB Commands only, so it does not 
#XXX generate unique IDs.  The Desktop module pulls commands from
#XXX fontconfig also (Graphics submodule) so for the moment just 
#XXX hack ids here to be unique
gensrc:
	$(TOP)/mkcmdtable -m LSB_Toolkit_Independent \
	-v `cat $(TOP)/target_version` | \
	sed -e 's/tbl-cmds/xdg-cmds/' \
	-e 's/std-cmd/xdg-cmd/' > cmdlist.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

deskenv.sgml: deskenv.m4 cmdlist.sgml
