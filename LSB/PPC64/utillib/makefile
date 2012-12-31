TOP=../../..

.SUFFIXES: .sgml .m4

FILES=utillib.sgml libz.sgml libcurses.sgml libutil.sgml
TABLES=

.m4.sgml:
	m4 -P $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibspec -a PPC64 -l libz -v `cat $(TOP)/target_version` >libz.sgml
	$(TOP)/mklibspec -a PPC64 -l libncurses -v `cat $(TOP)/target_version` >libcurses.sgml
	$(TOP)/mklibspec -a PPC64 -l libncursesw -v `cat $(TOP)/target_version` >libcursesw.sgml
	$(TOP)/mklibspec -a PPC64 -l libutil -v `cat $(TOP)/target_version` >libutil.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


utillib.sgml:  libz.sgml libcurses.sgml libutil.sgml
