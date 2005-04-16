
.SUFFIXES: .sgml .cpp .m4

FILES=intro.sgml cxxintro.sgml
TABLES= standards.sgml libraries.sgml cxxstandards.sgml cxxlibraries.sgml 

# Spec snot part of the main spec
EXCLSPECS="'Xlib','XSM','Xt','X-dbe','X-DPMS','X-Record','X-security','X-shape','X-shm','X-sync','X-test','XICE','XINPUT','OGL','ISOCXX','CXXABI'"

.m4.sgml:
	m4 -Uindex -Uformat -DARCH=PPC32 $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mkstandardsgmltable -a PPC32 -x $(EXCLSPECS) >standards.sgml
	../../../mkstandardsgmltable -s "'ISOCXX','CXXABI','SUSV3','LSB'" >cxxstandards.sgml
	../../../mklibsgmltable -a PPC32 -m "LSB_Core" >libraries.sgml
	../../../mklibsgmltable -a PPC32 -m "LSB_Cpp" -l "'libstdcxx'" >cxxlibraries.sgml

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
