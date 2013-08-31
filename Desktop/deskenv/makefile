TOP=../..

.SUFFIXES: .sgml .m4

FILES=deskenv.sgml
TABLES=

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all source: $(FILES) $(TABLES)

#XXX mkcmdtable was built for generic/LSB Commands only, so it does not 
#XXX generate unique IDs.  Desktop also has fontconfig commands, 
#XXX so for the moment just hack ids here to be unique
gensrc:
	../../mkcmdtable -m LSB_Desktop_Misc \
	-v `cat ../../LSB/target_version.generic` | \
	sed -e 's/tbl-cmds/xdg-cmds/' \
	-e 's/std-cmd/xdg-cmd/' > cmdlist.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

deskenv.sgml: deskenv.m4 cmdlist.sgml
