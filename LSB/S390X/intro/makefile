
.SUFFIXES: .sgml .cpp .m4

FILES=intro.sgml cxxintro.sgml
TABLES= standards.sgml libraries.sgml cxxstandards.sgml cxxlibraries.sgml 

# Spec snot part of the main spec
EXCLSPECS="'Xlib','XSM','Xt','X-dbe','X-DPMS','X-Record','X-security','X-shape','X-shm','X-sync','X-test','XICE','XINPUT','OGL','ISOCXX','CXXABI'"

.m4.sgml:
	m4 -Uindex -Uformat -DARCH=S390X $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mkstandardsgmltable -a S390X -x $(EXCLSPECS) >standards.sgml
	../../../mkstandardsgmltable -s "'ISOCXX','CXXABI'" >cxxstandards.sgml
	../../../mklibsgmltable -a S390X -m "LSB-Core" -x "'libstdcxx'" >libraries.sgml
	../../../mklibsgmltable -a S390X -m "LSB-Core" -l "'libstdcxx'" >cxxlibraries.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

intro.m4::
	cp ../../generic/intro/$@ .

cxxintro.m4::
	cp ../../generic/intro/$@ .

intro.sgml: standards.sgml libraries.sgml
cxxintro.sgml: cxxstandards.sgml cxxlibraries.sgml
