
.SUFFIXES: .sgml .m4

FILES=liblist.sgml
TABLES=

.m4.sgml:
	m4 -P $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mklibapnd -a All -m LSB_Base -v `cat ../../target_version.generic` | sed -e 's/ID=app-libgcc_s/ID=app-libgcc-s/' >liblist.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

