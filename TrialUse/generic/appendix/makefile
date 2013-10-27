TOP=../../..

# library appendix for Trial Use submodules - add here and in liblist.m4
# include entry for each submodule in TABLES,
# and generate it in gensrc target following style of examples
# remember to change the "-m submodule" argument

.SUFFIXES: .sgml .m4

FILES=liblist.sgml
TABLES=#mmlistlist.sgml securitylist.sgml 

.m4.sgml:
	m4 -P $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	#$(TOP)/mklibapnd -a All -m LSB_Multimedia -v `cat $(TOP)/target_version` >mmlistlist.sgml
	#$(TOP)/mklibapnd -a All -m LSB_Security -v `cat $(TOP)/target_version` >securitylist.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

