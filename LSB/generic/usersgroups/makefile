TOP=../../..

.SUFFIXES: .sgml .m4

FILES = usersgroups.sgml
#TABLES = usersgroupscmds.sgml usersgroupsints.sgml

.m4.sgml:
	m4 -P -Uformat -Uindex $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

usersgroups.sgml:  $(TABLES)

