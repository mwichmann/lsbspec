TOP=../../..

.SUFFIXES: .sgml .m4

FILES=liblist.sgml
TABLES=baselist.sgml securitylist.sgml

.m4.sgml:
	m4 -P $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibapnd -a IA64 -m LSB_Base -v `cat $(TOP)/target_version` | sed -e 's/ID=app-libgcc_s/ID=app-libgcc-s/' >baselist.sgml
	$(TOP)/mklibapnd -a IA64 -m LSB_Security -v `cat $(TOP)/target_version` >securitylist.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

