TOP=../../..

.SUFFIXES: .sgml .m4

FILES=libfreetype.sgml
TABLES= freetype.sgml 
MANPAGES=FT_Get_X11_Font_Format.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibspec -a All -v `cat $(TOP)/target_version` -c 3 -l libfreetype >freetype.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


libfreetype.sgml: freetype.sgml $(MANPAGES)
