
.SUFFIXES: .sgml .m4

FILES=liblist.sgml
TABLES=qtlist.sgml

.m4.sgml:
	m4 -P $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mklibapnd -a PPC64 -m LSB_Toolkit_Qt -v `cat ../../../LSB/target_version.PPC64` >qtlist.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

