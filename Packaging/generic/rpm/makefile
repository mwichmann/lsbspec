
.SUFFIXES: .sgml .cpp .m4

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
	../../../mkrpmtagtable -v `cat ../../../LSB/target_version.generic` -g Private -t "Header Private Tag Values" >privtags.sgml
	../../../mkrpmtagtable -v `cat ../../../LSB/target_version.generic` -g Signature -t "Signature Tag Values" >sigtags.sgml
	../../../mkrpmtagtable -v `cat ../../../LSB/target_version.generic` -g SigDigest -t "Signature Digest Tag Values" >sigdigtags.sgml
	../../../mkrpmtagtable -v `cat ../../../LSB/target_version.generic` -g SigSigning -t "Signature Signing Tag Values" >sigsigntags.sgml
	../../../mkrpmtagtable -v `cat ../../../LSB/target_version.generic` -g Header -t "Header Tag Values" >hdrtags.sgml
	../../../mkrpmtagtable -v `cat ../../../LSB/target_version.generic` -g PackageInfo -t "Package Info Tag Values" >pkgtags.sgml
	../../../mkrpmtagtable -v `cat ../../../LSB/target_version.generic` -g InstallInfo -t "Installation Tag Values" >insttags.sgml
	../../../mkrpmtagtable -v `cat ../../../LSB/target_version.generic` -g FileDetails -t "File Info Tag Values" >filetags.sgml
	../../../mkrpmtagtable -v `cat ../../../LSB/target_version.generic` -g Dependencies -t "Package Dependency Tag Values" >deptags.sgml
	../../../mkrpmtagtable -v `cat ../../../LSB/target_version.generic` -g Other -t "Other Tag Values" >othtags.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

package.sgml: $(SOURCES) $(TABLES)
