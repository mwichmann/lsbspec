
.SUFFIXES: .sgml .cpp .m4

MANPAGES=__assert_fail.sgml __errno_location.sgml __strtod_internal.sgml \
	 __strtol_internal.sgml  _IO_2_1_stderr_.sgml _IO_2_1_stdin_.sgml \
	_IO_2_1_stdout_.sgml _IO_feof.sgml _IO_getc.sgml _IO_putc.sgml \
	_IO_puts.sgml  __getpgid.sgml \
	 __xmknod.sgml acct.sgml adjtimex.sgml\
	alphasort.sgml cfmakeraw.sgml daemon.sgml endutent.sgml\
	flock.sgml fstatfs.sgml\
	fwprintf.sgml \
	gethostbyname.sgml getopt_long.sgml\
	getopt_long_only.sgml getprotobyname.sgml getprotoent.sgml\
	getservbyname.sgml getservent.sgml getutent.sgml htons.sgml\
	inet_aton.sgml inet_ntoa.sgml  initgroups.sgml ioperm.sgml iopl.sgml\
	isblank.sgml isinf.sgml iswblank.sgml iswctype.sgml llabs.sgml logwtmp.sgml\
	mbsnrtowcs.sgml memmem.sgml ntohs.sgml psignal.sgml putwchar.sgml\
	setbuffer.sgml setegid.sgml seteuid.sgml sethostid.sgml sethostname.sgml \
	setmntent.sgml setutent.sgml sigreturn.sgml\
	sigblock.sgml siggetmask.sgml \
	sigsetmask.sgml sigvec.sgml statfs.sgml stime.sgml\
	stpcpy.sgml stpncpy.sgml strfry.sgml strnlen.sgml strsep.sgml\
	strsignal.sgml strtok_r.sgml system.sgml \
	wcsnlen.sgml wcsnrtombs.sgml \
	fwprintf.sgml psignal.sgml \
	wait4.sgml wcpcpy.sgml wcpncpy.sgml wcscasecmp.sgml wcsdup.sgml \
	wcsnrtombs.sgml

FILES=baselib.sgml libpthread.sgml datadefs.sgml libc.sgml libm.sgml \
	libdl.sgml libcrypt.sgml librt.sgml
TABLES=

.cpp.sgml:
	cpp -I../../../src/include $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../mklibspec -a All -l libc >libc.sgml
	../../mklibspec -a All -l libm >libm.sgml
	../../mklibspec -a All -l libpthread >libpthread.sgml
	../../mklibspec -a All -l libdb >libdb.sgml
	../../mklibspec -a All -l libdl >libdl.sgml
	../../mklibspec -a All -l librt >librt.sgml
	../../mklibspec -a All -l libcrypt >libcrypt.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

baselib.sgml: libc.sgml libcman.sgml datadefs.sgml libm.sgml libpthread.sgml
baselib.sgml: libdb.sgml libdl.sgml libcrypt.sgml $(MANPAGES)
datadefs.sgml: ../../../src/include/datadefs.sgml
