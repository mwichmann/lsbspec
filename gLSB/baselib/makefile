
.SUFFIXES: .sgml .cpp .m4

MANPAGES=__assert_fail.sgml __errno_location.sgml __strtod_internal.sgml \
	 __strtol_internal.sgml  _IO_2_1_stderr_.sgml _IO_2_1_stdin_.sgml \
	_IO_2_1_stdout_.sgml _IO_feof.sgml _IO_getc.sgml _IO_putc.sgml \
	_IO_puts.sgml  __getpgid.sgml \
	 __xmknod.sgml acct.sgml adjtimex.sgml\
	alphasort.sgml cfmakeraw.sgml daemon.sgml endutent.sgml\
	fgetwc.sgml fgetws.sgml flock.sgml fputwc.sgml fputws.sgml fstatfs.sgml\
	fwide.sgml fwprintf.sgml fwscanf.sgml \
	gethostbyname.sgml getopt_long.sgml\
	getopt_long_only.sgml getprotobyname.sgml getprotoent.sgml\
	getservbyname.sgml getservent.sgml getutent.sgml getwc.sgml htons.sgml\
	inet_aton.sgml inet_ntoa.sgml  initgroups.sgml ioperm.sgml iopl.sgml\
	isblank.sgml isinf.sgml iswblank.sgml iswctype.sgml llabs.sgml logwtmp.sgml\
	mbsnrtowcs.sgml memmem.sgml ntohs.sgml psignal.sgml putwc.sgml putwchar.sgml\
	setbuffer.sgml setegid.sgml seteuid.sgml sethostid.sgml sigreturn.sgml\
	sigsetmask.sgml sigvec.sgml sigwaitinfo.sgml statfs.sgml stime.sgml\
	stpcpy.sgml stpncpy.sgml strfry.sgml strnlen.sgml strsep.sgml\
	wcsftime.sgml	wcsncasecmp.sgml wcsnlen.sgml wcsnrtombs.sgml \
	wcswcs.sgml wcspbrk.sgml

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
