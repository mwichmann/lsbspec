TOP=../..

.SUFFIXES: .sgml .m4

MANPAGES=

FILES=package.sgml
TABLES=privtags.sgml sigtags.sgml hdrtags.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat -Usubstr $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mkrpmtagtable -g Private -t "Header Private Tag Values" -v `cat $(TOP)/target_version` >privtags.sgml
	$(TOP)/mkrpmtagtable -g Signature -t "Signature Tag Values" -v `cat $(TOP)/target_version` >sigtags.sgml
	$(TOP)/mkrpmtagtable -g Header -t "Header Tag Values" -v `cat $(TOP)/target_version` >hdrtags.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

package.sgml: package.m4 privtags.sgml sigtags.sgml hdrtags.sgml rpmdeps.sgml
package.sgml: rpmdepsattr.sgml
