
.SUFFIXES: .sgml .cpp .m4

UNWINDPAGES= _Unwind_DeleteException.sgml _Unwind_Find_FDE.sgml \
	     _Unwind_ForcedUnwind.sgml _Unwind_GetDataRelBase.sgml \
	     _Unwind_GetGR.sgml _Unwind_GetIP.sgml \
	     _Unwind_GetLanguageSpecificData.sgml _Unwind_GetRegionStart.sgml \
	     _Unwind_GetTextRelBase.sgml _Unwind_RaiseException.sgml \
	     _Unwind_Resume.sgml _Unwind_SetGR.sgml _Unwind_SetIP.sgml

MANPAGES= $(UNWINDPAGES) __fpclassifyl.sgml

LIBS=libc.sgml libm.sgml libgcc_s.sgml libpthread.sgml libdl.sgml \
	libcrypt.sgml libstdcxx.sgml

FILES=baselib.sgml cxxlib.sgml

TABLES=

.cpp.sgml:
	cpp -I../../../../src/include $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uindex -Uformat -Usubstr $*.m4 >$@

all source: $(FILES) $(TABLES) $(MANPAGES)

gensrc:
	../../../mklibspec -a x86-64 -l libc >libc.sgml
	../../../mklibspec -a x86-64 -l libm >libm.sgml
	../../../mklibspec -a x86-64 -l libpthread >libpthread.sgml
	../../../mklibspec -a x86-64 -l libdl >libdl.sgml
	../../../mklibspec -a x86-64 -l libcrypt >libcrypt.sgml
	../../../mklibspec -a x86-64 -l libgcc_s | sed -e 's/ID=libgcc_s/ID=libgcc-s/' >libgcc_s.sgml
	../../../mklibspec -a x86-64 -c 1 -l libstdcxx -d | ../../../fixc++spec >libstdcxx.sgml

_Unwind_%.sgml: 
	cp ../../generic/baselib/$@ .

__fpclassifyl.sgml: 
	cp ../../generic/baselib/$@ .

clean:
	rm -f $(FILES) $(UNWINDPAGES)

spotless: clean
	rm -f $(LIBS)

baselib.sgml: libc.sgml libm.sgml libgcc_s.sgml
baselib.sgml: $(MANPAGES) $(LIBS)
cxxlib.sgml: libstdcxx.sgml
