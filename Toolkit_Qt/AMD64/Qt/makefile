
.SUFFIXES: .sgml .cpp .m4

FILES=Qt.sgml
TABLES= libQtCore.sgml libQtGui.sgml libQtSql.sgml libQtOpenGL.sgml libQtXml.sgml libQtSvg.sgml

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a x86-64 -c 2 -l libQtCore >libQtCore.sgml
	../../../mklibspec -a x86-64 -c 2 -l libQtGui >libQtGui.sgml
	../../../mklibspec -a x86-64 -c 2 -l libQtSql >libQtSql.sgml
	../../../mklibspec -a x86-64 -c 2 -l libQtOpenGL >libQtOpenGL.sgml
	../../../mklibspec -a x86-64 -c 2 -l libQtXml >libQtXml.sgml
	../../../mklibspec -a x86-64 -c 2 -l libQtSvg >libQtSvg.sgml
	../../../mklibspec -a x86-64 -c 2 -l libQtNetwork >libQtNetwork.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

Qt.sgml: libQtCore.sgml libQtGui.sgml libQtSql.sgml libQtOpenGL.sgml libQtXml.sgml libQtSvg.sgml

