
.SUFFIXES: .sgml .m4

FILES=liblist.sgml
TABLES=printlist.sgml

.m4.sgml:
	m4 -P $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mklibapnd -a All -m LSB_Print -v `cat ../../../LSB/target_version.generic` >printlist.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

