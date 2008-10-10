
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
	../../../mklibspec -a x86-64 -l libc -v `cat ../../target_version.AMD64` >libc.sgml
	../../../mklibspec -a x86-64 -l libm -v `cat ../../target_version.AMD64` >libm.sgml
	../../../mklibspec -a x86-64 -l libpthread -v `cat ../../target_version.AMD64` >libpthread.sgml
	../../../mklibspec -a x86-64 -l libdl -v `cat ../../target_version.AMD64` >libdl.sgml
	../../../mklibspec -a x86-64 -l libcrypt -v `cat ../../target_version.AMD64` >libcrypt.sgml
	../../../mklibspec -a x86-64 -l libgcc_s -v `cat ../../target_version.AMD64` | sed -e 's/ID=libgcc_s/ID=libgcc-s/' >libgcc_s.sgml
	../../../mklibspec -a x86-64 -c 1 -l libstdcxx -d -v `cat ../../target_version.AMD64` | ../../../fixc++spec >libstdcxx.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(LIBS)

baselib.sgml: libc.sgml libm.sgml libgcc_s.sgml
baselib.sgml: $(MANPAGES) $(LIBS)
cxxlib.sgml: libstdcxx.sgml
