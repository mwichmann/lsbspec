TOP=../../..

.SUFFIXES: .sgml .m4

FILES=Qt.sgml
TABLES= libQtCore.sgml libQtGui.sgml libQtSql.sgml libQtOpenGL.sgml libQtXml.sgml libQtSvg.sgml libQtNetwork.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibspec -a All -v `cat $(TOP)/target_version` -c 2 -l libQtCore >libQtCore.sgml
	$(TOP)/mklibspec -a All -v `cat $(TOP)/target_version` -c 2 -l libQtGui >libQtGui.sgml
	$(TOP)/mklibspec -a All -v `cat $(TOP)/target_version` -c 2 -l libQtSql >libQtSql.sgml
	$(TOP)/mklibspec -a All -v `cat $(TOP)/target_version` -c 2 -l libQtOpenGL >libQtOpenGL.sgml
	$(TOP)/mklibspec -a All -v `cat $(TOP)/target_version` -c 2 -l libQtXml >libQtXml.sgml
	$(TOP)/mklibspec -a All -v `cat $(TOP)/target_version` -c 2 -l libQtSvg >libQtSvg.sgml
	$(TOP)/mklibspec -a All -v `cat $(TOP)/target_version` -c 2 -l libQtNetwork >libQtNetwork.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

Qt.sgml: libQtCore.sgml libQtGui.sgml libQtSql.sgml libQtOpenGL.sgml libQtXml.sgml libQtSvg.sgml

