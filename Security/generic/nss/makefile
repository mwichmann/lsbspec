TOP=../../..

.SUFFIXES: .sgml .cpp .m4

FILES=nss.sgml
TABLES= libnspr4.sgml libnss3.sgml libssl3.sgml
MANPAGES=

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a All -v `cat ../../../LSB/target_version.generic` -c 3 -l libnspr4 >libnspr4.sgml
	../../../mklibspec -a All -v `cat ../../../LSB/target_version.generic` -c 3 -l libnss3 >libnss3.sgml
	../../../mklibspec -a All -v `cat ../../../LSB/target_version.generic` -c 3 -l libssl3 >libssl3.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


nss.sgml: $(TABLES) $(MANPAGES)
