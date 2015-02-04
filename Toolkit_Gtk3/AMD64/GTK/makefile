TOP=../../..

.SUFFIXES: .sgml .m4

MANPAGES=
FILES=GTK3.sgml
INTRO=../../generic/GTK/GTK3.m4
TABLES= libGdk_3.sgml libGtk_3.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat -DARCH=x86-64 $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibspec -a x86-64 -v `cat $(TOP)/target_version` -c 2 -l libgdk-3 >libGdk_3.sgml
	$(TOP)/mklibspec -a x86-64 -v `cat $(TOP)/target_version` -c 2 -l libgtk-3 >libGtk_3.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

# change this if the book needs something other than the common GTK3.m4
GTK3.sgml: $(TABLES) $(MANPAGES) $(INTRO)
	m4 -P -Uindex -Uformat -DARCH=x86-64 $(INTRO) > $@
