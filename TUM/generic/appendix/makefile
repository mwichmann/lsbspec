
.SUFFIXES: .sgml .m4

FILES=liblist.sgml
TABLES=tumlist.sgml

.m4.sgml:
	m4 -P $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mklibapnd -a All -m LSB_TUM -v `cat ../../../LSB/target_version.generic` >tumlist.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

