
.SUFFIXES: .sgml .cpp .m4

MANPAGES=

FILES=opengl.sgml
TABLES= libGL.sgml libGLU.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a All -v `cat ../../../LSB/version.generic` -l libGL >libGL.sgml
	../../../mklibspec -a All -v `cat ../../../LSB/version.generic` -l libGLU >libGLU.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


opengl.sgml: libGL.sgml libGLU.sgml
opengl.sgml: $(MANPAGES)
