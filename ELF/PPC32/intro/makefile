
.SUFFIXES: .sgml .cpp .m4

FILES=intro.sgml
TABLES=standards.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mkstandardsgmltable -a PPC32 -t Standard -m LSB_Core -v `cat ../../../LSB/target_version.PPC32` >standards.sgml
	../../../mkstandardsgmltable -a PPC32 -t Reference -m LSB_Core -v `cat ../../../LSB/target_version.PPC32` >references.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

intro.m4::
	cp ../../generic/intro/$@ .

intro.sgml: standards.sgml
