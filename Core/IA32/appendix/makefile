
.SUFFIXES: .sgml .m4

FILES=liblist.sgml
TABLES=baselist.sgml securitylist.sgml

.m4.sgml:
	m4 -P $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mklibapnd -a IA32 -m LSB_Base -v `cat ../../../LSB/target_version.IA32` | sed -e 's/ID=app-libgcc_s/ID=app-libgcc-s/' >baselist.sgml
	../../../mklibapnd -a IA32 -m LSB_Security -v `cat ../../../LSB/target_version.IA32` >securitylist.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

