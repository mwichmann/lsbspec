TOP=../../..

.SUFFIXES: .sgml .m4

FILES=dynlnk.sgml dyntag.sgml linuxtag.sgml
TABLES=

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mkdyntagtable -a All -s 'ABIUpdate' -v `cat $(TOP)/target_version` -c 4 >dyntag.sgml
	$(TOP)/mkdyntagtable -a All -s 'LSB' -v `cat $(TOP)/target_version` -d >linuxtag.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


dynlnk.sgml: dyntag.sgml linuxtag.sgml
