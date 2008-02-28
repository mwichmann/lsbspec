
.SUFFIXES: .sgml .cpp .m4

MANPAGES=

FILES=opengl.sgml
TABLES= libGL.sgml

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a All -v `cat ../../../LSB/target_version.generic` -l libGL >libGL.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


opengl.sgml: libGL.sgml
opengl.sgml: $(MANPAGES)
