
.SUFFIXES: .sgml .cpp .m4

MANPAGES=__assert_fail.sgml __ctype_b.sgml __ctype_tolower.sgml __ctype_toupper.sgml \
	__cxa_atexit.sgml __dcgettext.sgml __environ.sgml \
	__errno_location.sgml __fpending.sgml __getpgid.sgml __mempcpy.sgml \
	__rawmemchr.sgml __sysconf.sgml _environ.sgml _IO_2_1_stderr_.sgml \
	_IO_2_1_stdin_.sgml _IO_2_1_stdout_.sgml _IO_feof.sgml _IO_getc.sgml \
	_IO_putc.sgml _IO_puts.sgml __libc_start_main.sgml __lxstat.sgml \
	_nl_msg_cat_cntr.sgml _obstack_begin.sgml _obstack_newchunk.sgml \
	__stpcpy.sgml __strtod_internal.sgml __strtol_internal.sgml _sys_errlist.sgml \
	_sys_siglist.sgml __xmknod.sgml acct.sgml adjtime.sgml adjtimex.sgml \
	alphasort.sgml alphasort64.sgml bindtextdomain.sgml cfmakeraw.sgml \
	cfsetspeed.sgml daemon.sgml dcgettext.sgml dladdr.sgml endutent.sgml \
	err.sgml error.sgml errx.sgml flock.sgml fstatfs.sgml fstatfs64.sgml \
	fwprintf.sgml \
	gethostbyname.sgml getloadavg.sgml getopt_long.sgml getopt_long_only.sgml \
	getprotobyname.sgml getprotoent.sgml getservbyname.sgml getservent.sgml \
	gettext.sgml getutent.sgml htons.sgml inet_aton.sgml inet_ntoa.sgml \
	initgroups.sgml isblank.sgml isinf.sgml iswblank.sgml \
	iswctype.sgml llabs.sgml mbsnrtowcs.sgml memmem.sgml memrchr.sgml \
	mkstemp64.sgml ntohs.sgml obstack_free.sgml opterr.sgml \
	optind.sgml optopt.sgml \
	psignal.sgml putwchar.sgml pwrite64.sgml sem_timedwait.sgml \
	setbuffer.sgml setegid.sgml seteuid.sgml setgroups.sgml \
	sethostid.sgml sethostname.sgml setmntent.sgml setutent.sgml \
	sigandset.sgml sigblock.sgml siggetmask.sgml sigisemptyset.sgml sigorset.sgml \
	sigreturn.sgml sigsetmask.sgml sigvec.sgml statfs.sgml stime.sgml stpcpy.sgml \
	stpncpy.sgml strcasestr.sgml strerror_r.sgml strfry.sgml strndup.sgml \
	strnlen.sgml strsep.sgml strsignal.sgml strtok_r.sgml strtoq.sgml strtouq.sgml \
	strverscmp.sgml system.sgml textdomain.sgml vasprintf.sgml vdprintf.sgml \
	verrx.sgml wait4.sgml warn.sgml warnx.sgml wcpcpy.sgml wcpncpy.sgml \
	wcscasecmp.sgml wcsdup.sgml wcsncasecmp.sgml wcsnlen.sgml wcsnrtombs.sgml \
	wcstoq.sgml wcstouq.sgml

FILES=baselib.sgml libpthread.sgml datadefs.sgml libc.sgml libm.sgml \
	libdl.sgml libcrypt.sgml librt.sgml #libdb.sgml
TABLES=

.cpp.sgml:
	cpp -I../../../src/include $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../mklibspec -a All -l libc >libc.sgml
	../../mklibspec -a All -l libm >libm.sgml
	../../mklibspec -a All -l libpthread >libpthread.sgml
	#../../mklibspec -a All -l libdb >libdb.sgml
	../../mklibspec -a All -l libdl >libdl.sgml
	../../mklibspec -a All -l librt >librt.sgml
	../../mklibspec -a All -l libcrypt >libcrypt.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

baselib.sgml: libc.sgml datadefs.sgml libm.sgml libpthread.sgml
baselib.sgml: libdb.sgml libdl.sgml libcrypt.sgml $(MANPAGES)
datadefs.sgml: ../../../src/include/datadefs.sgml
