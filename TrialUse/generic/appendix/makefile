TOP=../../..

# library appendix for Trial Use submodules - add here and in liblist.m4
# include entry for each submodule in TABLES,
# and generate it in gensrc target following style of examples
# remember to change the "-m submodule" argument

.SUFFIXES: .sgml .m4

FILES=liblist.sgml
TABLES= tumlist.sgml gtk3list.sgml

.m4.sgml:
	m4 -P $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	$(TOP)/mklibapnd -a All -m LSB_TUM -v `cat $(TOP)/target_version` >tumlist.sgml
	$(TOP)/mklibapnd -a All -m LSB_Toolkit_Gtk3 -v `cat $(TOP)/target_version` >gtk3list.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

liblist.sgml: $(TABLES)
