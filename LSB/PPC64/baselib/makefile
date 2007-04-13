
.SUFFIXES: .sgml .cpp .m4

UNWINDPAGES= _Unwind_DeleteException.sgml _Unwind_Find_FDE.sgml \
	     _Unwind_ForcedUnwind.sgml _Unwind_GetDataRelBase.sgml \
	     _Unwind_GetGR.sgml _Unwind_GetIP.sgml \
	     _Unwind_GetLanguageSpecificData.sgml _Unwind_GetRegionStart.sgml \
	     _Unwind_GetTextRelBase.sgml _Unwind_RaiseException.sgml \
	     _Unwind_Resume.sgml _Unwind_SetGR.sgml _Unwind_SetIP.sgml

MANPAGES= $(UNWINDPAGES)

LIBS=libc.sgml libm.sgml libgcc_s.sgml libpthread.sgml libdl.sgml \
	libcrypt.sgml libstdcxx.sgml

FILES=baselib.sgml cxxlib.sgml

TABLES=

.cpp.sgml:
	cpp -I../../../../src/include $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uindex -Uformat -Usubstr $*.m4 >$@

all source: $(FILES) $(TABLES) $(MANPAGES)

gensrc: $(MANPAGES)
	../../../mklibspec -a PPC64 -l libc -v `cat ../../version.PPC64` >libc.sgml
	../../../mklibspec -a PPC64 -l libm -v `cat ../../version.PPC64` >libm.sgml
	../../../mklibspec -a PPC64 -l libpthread -v `cat ../../version.PPC64` >libpthread.sgml
	../../../mklibspec -a PPC64 -l libdl -v `cat ../../version.PPC64` >libdl.sgml
	../../../mklibspec -a PPC64 -l libcrypt -v `cat ../../version.PPC64` >libcrypt.sgml
	../../../mklibspec -a PPC64 -l libgcc_s -v `cat ../../version.PPC64` | sed -e 's/ID=libgcc_s/ID=libgcc-s/' >libgcc_s.sgml
	../../../mklibspec -a PPC64 -c 1 -l libstdcxx -d -v `cat ../../version.PPC64` | ../../../fixc++spec >libstdcxx.sgml

_Unwind_%.sgml: 
	cp ../../generic/baselib/$@ .

clean:
	rm -f $(FILES) $(UNWINDPAGES)

spotless: clean
	rm -f $(LIBS)

baselib.sgml: libc.sgml libm.sgml libgcc_s.sgml
baselib.sgml: $(MANPAGES) $(LIBS)
cxxlib.sgml: libstdcxx.sgml
