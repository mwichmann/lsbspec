
.SUFFIXES: .sgml .cpp .m4

FILES= sysinit.sgml


TABLES=

.cpp.sgml:
	cpp -I../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


sysinit.sgml: cron.sgml runlevels.sgml initactions.sgml initscripts.sgml \
	installinit.sgml facnames.sgml scriptnames.sgml initfunctions.sgml
