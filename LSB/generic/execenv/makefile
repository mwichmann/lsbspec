TOP=../../..

.SUFFIXES: .sgml .cpp .m4

FILES=execenv.sgml
TABLES=

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

execenv.sgml: execenv.m4 fhs.sgml procfs.sgml
