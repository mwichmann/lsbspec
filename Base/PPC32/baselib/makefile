TOP=../../..

.SUFFIXES: .sgml .m4

MANPAGES=

LIBS=libc.sgml libm.sgml libgcc_s.sgml libpthread.sgml libdl.sgml \
	libcrypt.sgml libstdcxx.sgml

FILES=baselib.sgml cxxlib.sgml

TABLES=

.m4.sgml:
	m4 -P -Uindex -Uformat -Usubstr $*.m4 >$@

all source: $(FILES) $(TABLES) $(MANPAGES)

gensrc: $(MANPAGES)
	$(TOP)/mklibspec -a PPC32 -l libc -v `cat $(TOP)/target_version` >libc.sgml
	$(TOP)/mklibspec -a PPC32 -l libm -v `cat $(TOP)/target_version` >libm.sgml
	$(TOP)/mklibspec -a PPC32 -l libpthread -v `cat $(TOP)/target_version` >libpthread.sgml
	$(TOP)/mklibspec -a PPC32 -l libdl -v `cat $(TOP)/target_version` >libdl.sgml
	$(TOP)/mklibspec -a PPC32 -l libcrypt -v `cat $(TOP)/target_version` >libcrypt.sgml
	$(TOP)/mklibspec -a PPC32 -l libgcc_s -v `cat $(TOP)/target_version` >libgcc_s.sgml
	$(TOP)/mklibspec -a PPC32 -c 1 -l libstdcxx -d -v `cat $(TOP)/target_version` | $(TOP)/fixc++spec >libstdcxx.sgml

clean:
	rm -f $(FILES) $(UNWINDPAGES)

spotless: clean
	rm -f $(LIBS)

baselib.sgml: libc.sgml libm.sgml libgcc_s.sgml
baselib.sgml: $(MANPAGES) $(LIBS)
cxxlib.sgml: libstdcxx.sgml
