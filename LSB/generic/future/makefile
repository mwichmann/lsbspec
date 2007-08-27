#
#	Linux Standard Base, http://www.linuxbase.org/
#	Nick Stoughton, MSB Associates, 6/2/2005
#
#	This LSB Makefile was derived from one written by Stuart Anderson
#

.SUFFIXES: .sgml .m4

FILES=future.sgml
TABLES= 
BASEFILES=$(filter-out $(TABLES) $(FILES), $(shell ls *.sgml))

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

future.sgml: $(TABLES) $(BASEFILES)
