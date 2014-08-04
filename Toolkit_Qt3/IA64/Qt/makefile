TOP=../../..

.SUFFIXES: .sgml .m4

FILES=Qt3.sgml
INTRO=../../generic/Qt3/Qt3.m4
TABLES= libqt_mt.sgml 

.m4.sgml:
	m4 -P -Uindex -Uformat -DARCH=IA64 $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibspec -a IA64 -v `cat $(TOP)/target_version` -c 2 -l libqt-mt >libqt_mt.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

# change this if the book needs something other than the common Qt3.m4
Qt3.sgml: $(TABLES) $(MANPAGES) $(INTRO)
	m4 -P -Uindex -Uformat -DARCH=IA64 $(INTRO) > $@
