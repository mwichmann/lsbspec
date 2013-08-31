TOP=../../..

.SUFFIXES: .sgml .cpp .m4

FILES=lowlevel.sgml
TABLES=

.m4.sgml:
	m4 -P $*.m4 >$@

all: $(FILES) $(TABLES)

source: all

gensrc:

clean:
	#rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

