
.SUFFIXES: .sgml .cpp .m4

FILES=intro.sgml
TABLES=standards.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mkstandardsgmltable -a x86-64 -t Standard -m LSB_Core -v `cat ../../../LSB/target_version.AMD64` >standards.sgml
	../../../mkstandardsgmltable -a x86-64 -t Reference -m LSB_Core -v `cat ../../../LSB/target_version.AMD64` >references.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

intro.m4::
	cp ../../generic/intro/$@ .

intro.sgml: standards.sgml
intro.sgml: ../../../matters/definitions.sgml ../../generic/intro/terms.sgml
