
.SUFFIXES: .sgml .cpp .m4

FILES=intro.sgml cxxintro.sgml
TABLES= standards.sgml glibraries.sgml pslibs.sgml cxxstandards.sgml cxxglibraries.sgml

# Spec snot part of the main spec
EXCLSPECS="'Xlib','XSM','Xt','X-dbe','X-DPMS','X-Record','X-security','X-shape','X-shm','X-sync','X-test','XICE','XINPUT','OGL','ISOCXX','CXXABI'"

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uindex -Uformat -DARCH=All $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mkstandardsgmltable -a All -x $(EXCLSPECS) >standards.sgml
	../../../mkstandardsgmltable -s "'ISOCXX','CXXABI'" >cxxstandards.sgml
	../../../mklibsgmltable -a All -m "LSB-Core" -x "'libstdcxx'" >glibraries.sgml
	../../../mklibsgmltable -a None -m "LSB-Core" -x "'libstdcxx'" >pslibs.sgml
	../../../mklibsgmltable -a All -m "LSB-Core" -l "'libstdcxx'" >cxxlibraries.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


intro.sgml: preface.sgml genscope.sgml modscope.sgml standards.sgml libraries.sgml terms.sgml
cxxintro.sgml: preface.sgml genscope.sgml cxxscope.sgml cxxstandards.sgml cxxglibraries.sgml terms.sgml

libraries.sgml: glibraries.sgml pslibs.sgml
