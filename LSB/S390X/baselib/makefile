
.SUFFIXES: .sgml .cpp .m4

MANPAGES=

LIBS=libc.sgml libm.sgml libgcc_s.sgml libpthread.sgml libdl.sgml \
	libcrypt.sgml libstdcxx.sgml

FILES=baselib.sgml cxxlib.sgml

TABLES=

.m4.sgml:
	m4 -P -Uindex -Uformat -Usubstr $*.m4 >$@

all source: $(FILES) $(TABLES) $(MANPAGES)

gensrc: $(MANPAGES)
	../../../mklibspec -a S390X -l libc -v `cat ../../target_version.S390X` >libc.sgml
	../../../mklibspec -a S390X -l libm -v `cat ../../target_version.S390X` >libm.sgml
	../../../mklibspec -a S390X -l libpthread -v `cat ../../target_version.S390X` >libpthread.sgml
	../../../mklibspec -a S390X -l libdl -v `cat ../../target_version.S390X` >libdl.sgml
	../../../mklibspec -a S390X -l libcrypt -v `cat ../../target_version.S390X` >libcrypt.sgml
	../../../mklibspec -a S390X -l libgcc_s -v `cat ../../target_version.S390X` | sed -e 's/ID=libgcc_s/ID=libgcc-s/' >libgcc_s.sgml
	../../../mklibspec -a S390X -c 1 -l libstdcxx -d -v `cat ../../target_version.S390X` | ../../../fixc++spec >libstdcxx.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(LIBS)

baselib.sgml: libc.sgml libm.sgml libgcc_s.sgml
baselib.sgml: $(MANPAGES) $(LIBS)
cxxlib.sgml: libstdcxx.sgml
