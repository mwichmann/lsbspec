TOP=../../..

.SUFFIXES: .sgml .cpp .m4

FILES=libXrender.sgml
TABLES= Xrender.sgml 

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibspec -a All -v `cat $(TOP)/target_version` -c 3 -l libXrender >Xrender.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


libXrender.sgml: Xrender.sgml
#libXrender.sgml: $(MANPAGES)
