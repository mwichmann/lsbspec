
.SUFFIXES: .sgml .cpp .m4

MANPAGES=

FILES=package.sgml
TABLES=privtags.sgml sigtags.sgml hdrtags.sgml

.m4.sgml:
	m4 -Uindex -Uformat -Usubstr $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../mkrpmtagtable -g Private -t "Header Private Tag Values" >privtags.sgml
	../../mkrpmtagtable -g Signature -t "Signature Tag Values" >sigtags.sgml
	../../mkrpmtagtable -g Header -t "Header Tag Values" >hdrtags.sgml
	../../mkrpmtagtable -g PackageInfo -t "Package Info Tag Values" >pkgtags.sgml
	../../mkrpmtagtable -g InstallInfo -t "Installation Tag Values" >insttags.sgml
	../../mkrpmtagtable -g FileDetails -t "File Info Tag Values" >filetags.sgml
	../../mkrpmtagtable -g Dependencies -t "Package Dependency Tag Values" >deptags.sgml
	../../mkrpmtagtable -g Other -t "Other Tag Values" >othtags.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

package.sgml: package.m4 privtags.sgml sigtags.sgml hdrtags.sgml rpmdeps.sgml
package.sgml: rpmdepsattr.sgml
