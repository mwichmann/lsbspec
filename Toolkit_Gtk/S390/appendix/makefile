
.SUFFIXES: .sgml .m4

FILES=liblist.sgml
TABLES=gtklist.sgml

.m4.sgml:
	m4 -P $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mklibapnd -a S390 -m LSB_Toolkit_Gtk -v `cat ../../../LSB/target_version.S390` >gtklist.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

