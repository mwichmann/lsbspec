
.SUFFIXES: .sgml .m4

FILES=liblist.sgml
TABLES=printlist.sgml scanlist.sgml

.m4.sgml:
	m4 -P $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mklibapnd -a All -m LSB_Print -v `cat ../../../LSB/target_version.generic` >printlist.sgml
	../../../mklibapnd -a All -m LSB_Scan -v `cat ../../../LSB/target_version.generic` >scanlist.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

