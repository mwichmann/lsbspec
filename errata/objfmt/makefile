TOP=../..

.SUFFIXES: .sgml .m4

FILES  = objfmt.sgml 
TABLES = ia64sect.sgml ppc32sect.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mksectiontable -a IA64 -v `cat $(TOP)/target_version` -s 'LSB' -t 'IA64 Additional Special Sections' >ia64sect.sgml
	$(TOP)/mksectiontable -a PPC32 -v `cat $(TOP)/target_version` -s 'LSB' -t 'PPC32 Additional Special Sections' >ppc32sect.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


objfmt.sgml: objfmt.m4 ia64sect.sgml ppc32sect.sgml
