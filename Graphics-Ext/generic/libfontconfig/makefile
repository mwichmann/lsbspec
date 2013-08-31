TOP=../../..

.SUFFIXES: .sgml .cpp .m4

FILES=libfontconfig.sgml
TABLES= fontconfig.sgml 

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a All -v `cat ../../../LSB/target_version.generic` -c 3 -l libfontconfig >fontconfig.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


libfontconfig.sgml: fontconfig.sgml
#libfontconfig.sgml: $(MANPAGES)
