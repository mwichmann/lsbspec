TOP=../../..

.SUFFIXES: .sgml .m4

FILES=liblist.sgml
TABLES=corelist.sgml

.m4.sgml:
	m4 -P $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibapnd -a IA64 -m LSB_Core -v `cat $(TOP)/LSB/target_version.IA64` | sed -e 's/ID=app-libgcc_s/ID=app-libgcc-s/' >corelist.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

