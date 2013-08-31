
.SUFFIXES: .sgml .cpp .m4

GENSRC=dyntag_IA64.sgml linuxtag_IA64.sgml
FILES=dynlnk.sgml $(GENSRC)
TABLES=

.m4.sgml:
	m4 -P $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mkdyntagtable -a IA64 -s 'IA64 ABI' -v `cat $(TOP)/target_version` -c 4 >dyntag_IA64.sgml
	$(TOP)/mkdyntagtable -a IA64 -s 'LSB' -v `cat $(TOP)/target_version` -d >linuxtag_IA64.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


dynlnk.sgml: dynlnk.m4 $(GENSRC)
