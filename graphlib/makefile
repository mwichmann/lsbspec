
.SUFFIXES: .sgml .cpp .m4

FILES=graphlib.sgml
TABLES= libICE.sgml libSM.sgml libX11.sgml libXext.sgml libXt.sgml libGL.sgml

.cpp.sgml:
	cpp -I../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../mklibspec Lname=libX11 >libX11.sgml
	../mklibspec Lname=libXext >libXext.sgml
	../mklibspec Lname=libICE >libICE.sgml
	../mklibspec Lname=libSM >libSM.sgml
	../mklibspec Lname=libXt >libXt.sgml
	../mklibspec Lname=libGL >libGL.sgml

clean:
	rm -f $(FILES) $(TABLES)

graphlib.sgml: libX11.sgml libXext.sgml libICE.sgml libSM.sgml libXt.sgml libGL.sgml
