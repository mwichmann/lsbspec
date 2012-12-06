TOP=../../..

.SUFFIXES: .sgml .m4

MANPAGES=

SOURCES=package.m4 indextypes.sgml rpmdepsattr.sgml rpmdeps.sgml \
	coredep.sgml
FILES=package.sgml 
TABLES=privtags.sgml sigtags.sgml hdrtags.sgml pkgtags.sgml insttags.sgml \
       filetags.sgml deptags.sgml othtags.sgml sigdigtags.sgml sigsigntags.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat -Usubstr $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mkrpmtagtable -v `cat $(TOP)/target_version` -g Private -t "Header Private Tag Values" >privtags.sgml
	$(TOP)/mkrpmtagtable -v `cat $(TOP)/target_version` -g Signature -t "Signature Tag Values" >sigtags.sgml
	$(TOP)/mkrpmtagtable -v `cat $(TOP)/target_version` -g SigDigest -t "Signature Digest Tag Values" >sigdigtags.sgml
	$(TOP)/mkrpmtagtable -v `cat $(TOP)/target_version` -g SigSigning -t "Signature Signing Tag Values" >sigsigntags.sgml
	$(TOP)/mkrpmtagtable -v `cat $(TOP)/target_version` -g Header -t "Header Tag Values" >hdrtags.sgml
	$(TOP)/mkrpmtagtable -v `cat $(TOP)/target_version` -g PackageInfo -t "Package Info Tag Values" >pkgtags.sgml
	$(TOP)/mkrpmtagtable -v `cat $(TOP)/target_version` -g InstallInfo -t "Installation Tag Values" >insttags.sgml
	$(TOP)/mkrpmtagtable -v `cat $(TOP)/target_version` -g FileDetails -t "File Info Tag Values" >filetags.sgml
	$(TOP)/mkrpmtagtable -v `cat $(TOP)/target_version` -g Dependencies -t "Package Dependency Tag Values" >deptags.sgml
	$(TOP)/mkrpmtagtable -v `cat $(TOP)/target_version` -g Other -t "Other Tag Values" >othtags.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

package.sgml: $(SOURCES) $(TABLES)
