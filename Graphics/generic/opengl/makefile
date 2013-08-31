TOP=../../..

.SUFFIXES: .sgml .cpp .m4

MANPAGES=

FILES=opengl.sgml
TABLES= libGL.sgml libGLU.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibspec -a All -v `cat $(TOP)/target_version` -l libGL >libGL.sgml
	$(TOP)/mklibspec -a All -v `cat $(TOP)/target_version` -l libGLU >libGLU.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


opengl.sgml: libGL.sgml libGLU.sgml
opengl.sgml: $(MANPAGES)
