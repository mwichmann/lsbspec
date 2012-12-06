TOP=../..

.SUFFIXES: .sgml .m4

FILES= tum.sgml

TABLES=

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mkcmdtable -m LSB_TUM -v `cat $(TOP)/target_version` > cmdlist.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


tum.sgml:tum.m4 cmdlist.sgml
