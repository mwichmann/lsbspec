TOP=../../..

.SUFFIXES: .sgml .cpp .m4

FILES=dynlnk.sgml dyntag.sgml linuxtag.sgml
TABLES=

.m4.sgml:
	m4 -P $*.m4 >$@

all: $(FILES) $(TABLES)

source: all

gensrc:
	$(TOP)/mkdyntagtable -a S390 -s 'S390 ABI' -v `cat $(TOP)/target_version` -c 4 >dyntag.sgml
	$(TOP)/mkdyntagtable -a S390 -s 'LSB' -v `cat $(TOP)/target_version` -d >linuxtag.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


dynlnk.sgml: dyntag.sgml linuxtag.sgml
