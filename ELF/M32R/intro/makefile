
.SUFFIXES: .sgml .cpp .m4

FILES=intro.sgml
TABLES=standards.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mkstandardsgmltable -a M32R -t Standard -m LSB_Base -v `cat ../../../LSB/target_version.M32R` >standards.sgml
	../../../mkstandardsgmltable -a M32R -t Reference -m LSB_Base -v `cat ../../../LSB/target_version.M32R` >references.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

intro.m4:
	cp ../../generic/intro/$@ .

intro.sgml: standards.sgml
