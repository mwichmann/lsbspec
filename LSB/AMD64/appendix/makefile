TOP=../../..

.SUFFIXES: .sgml .m4

FILES=liblist.sgml
TABLES=baselist.sgml

.m4.sgml:
	m4 -P $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibapnd -a x86-64 -m LSB_Base -v `cat $(TOP)/target_version` | sed -e 's/ID=app-libgcc_s/ID=app-libgcc-s/' >baselist.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

