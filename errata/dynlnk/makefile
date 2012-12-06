TOP=../..

.SUFFIXES: .sgml .m4

GENSRC=dyntag_IA64.sgml linuxtag_IA64.sgml
FILES=dynlnk.sgml $(GENSRC)
TABLES=

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mkdyntagtable -a IA64 -v `cat $(TOP)/target_version` -s 'IA64 ABI' -c 4 >dyntag_IA64.sgml
	$(TOP)/mkdyntagtable -a IA64 -v `cat $(TOP)/target_version` -s 'LSB' -d >linuxtag_IA64.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


dynlnk.sgml: dynlnk.m4 $(GENSRC)
