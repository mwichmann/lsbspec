TOP=../../..

.SUFFIXES: .sgml .m4

FILES=Qt.sgml
INTRO=../../generic/Qt/Qt.m4
TABLES= libQtCore.sgml libQtGui.sgml libQtSql.sgml libQtOpenGL.sgml libQtXml.sgml libQtSvg.sgml libQtNetwork.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat -DARCH=PPC32 $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibspec -a PPC32 -v `cat $(TOP)/target_version` -c 2 -l libQtCore >libQtCore.sgml
	$(TOP)/mklibspec -a PPC32 -v `cat $(TOP)/target_version` -c 2 -l libQtGui >libQtGui.sgml
	$(TOP)/mklibspec -a PPC32 -v `cat $(TOP)/target_version` -c 2 -l libQtSql >libQtSql.sgml
	$(TOP)/mklibspec -a PPC32 -v `cat $(TOP)/target_version` -c 2 -l libQtOpenGL >libQtOpenGL.sgml
	$(TOP)/mklibspec -a PPC32 -v `cat $(TOP)/target_version` -c 2 -l libQtXml >libQtXml.sgml
	$(TOP)/mklibspec -a PPC32 -v `cat $(TOP)/target_version` -c 2 -l libQtSvg >libQtSvg.sgml
	$(TOP)/mklibspec -a PPC32 -v `cat $(TOP)/target_version` -c 2 -l libQtNetwork >libQtNetwork.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

# change this if the book needs something other than the common Qt.m4
Qt.sgml: $(TABLES) $(MANPAGES) $(INTRO)
	m4 -P -Uindex -Uformat -DARCH=PPC32 $(INTRO) > $@
