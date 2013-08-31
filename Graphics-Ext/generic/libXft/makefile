TOP=../../..

.SUFFIXES: .sgml .cpp .m4

FILES=libXft.sgml
TABLES= Xft.sgml 

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibspec -a All -v `cat $(TOP)/target_version` -c 3 -l libXft >Xft.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


libXft.sgml: Xft.sgml
#libXft.sgml: $(MANPAGES)
