
.SUFFIXES: .sgml .cpp .m4

FILES=graphlib.sgml
TABLES= libICE.sgml libSM.sgml libX11.sgml libXext.sgml libXt.sgml libGL.sgml

.cpp.sgml:
	cpp -I../../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a IA64 -l libX11 >libX11.sgml
	../../../mklibspec -a IA64 -l libXext >libXext.sgml
	../../../mklibspec -a IA64 -l libICE >libICE.sgml
	../../../mklibspec -a IA64 -l libSM >libSM.sgml
	../../../mklibspec -a IA64 -l libXt >libXt.sgml
	../../../mklibspec -a IA64 -l libGL >libGL.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


graphlib.sgml: libX11.sgml libXext.sgml libICE.sgml libSM.sgml libXt.sgml libGL.sgml
