
.SUFFIXES: .sgml .cpp .m4

MANPAGES=__assert_fail.sgml __ctype_b_loc.sgml __ctype_tolower_loc.sgml __ctype_toupper_loc.sgml \
	__cxa_atexit.sgml __environ.sgml \
	__errno_location.sgml __fpending.sgml __getpgid.sgml __mempcpy.sgml \
	__rawmemchr.sgml __sysconf.sgml _environ.sgml _IO_feof.sgml \
	_IO_getc.sgml _IO_putc.sgml _IO_puts.sgml __libc_start_main.sgml \
	__lxstat.sgml \
	_nl_msg_cat_cntr.sgml _obstack_begin.sgml _obstack_newchunk.sgml \
	__stpcpy.sgml __strtod_internal.sgml __strtol_internal.sgml _sys_errlist.sgml \
	_sys_siglist.sgml __xmknod.sgml acct.sgml adjtime.sgml adjtimex.sgml \
	bindtextdomain.sgml cfmakeraw.sgml \
	cfsetspeed.sgml daemon.sgml dcgettext.sgml dladdr.sgml endutent.sgml \
	err.sgml error.sgml errx.sgml flock.sgml \
	gethostbyname_r.sgml getloadavg.sgml getopt_long.sgml \
	getopt_long_only.sgml getservbyname.sgml getservent.sgml \
	gettext.sgml getutent.sgml htons.sgml inet_aton.sgml inet_ntoa.sgml \
	initgroups.sgml ioctl.sgml iswctype.sgml kill.sgml llabs.sgml \
	mbsnrtowcs.sgml memmem.sgml memrchr.sgml \
	mkstemp64.sgml ntohs.sgml obstack_free.sgml opterr.sgml \
	optind.sgml optopt.sgml \
	psignal.sgml putwchar.sgml pwrite64.sgml sem_timedwait.sgml \
	setbuffer.sgml setegid.sgml seteuid.sgml setgroups.sgml \
	sethostid.sgml sethostname.sgml setsockopt.sgml \
	setutent.sgml \
	sigandset.sgml sigblock.sgml siggetmask.sgml sigisemptyset.sgml sigorset.sgml \
	sigreturn.sgml sigsetmask.sgml sigvec.sgml sockio.sgml stime.sgml stpcpy.sgml \
	stpncpy.sgml strcasestr.sgml strerror_r.sgml strfry.sgml strndup.sgml \
	strnlen.sgml strsep.sgml strsignal.sgml strtok_r.sgml strtoq.sgml strtouq.sgml \
	strverscmp.sgml system.sgml textdomain.sgml unlink.sgml \
	vasprintf.sgml vdprintf.sgml \
	verrx.sgml wait4.sgml warn.sgml warnx.sgml wcpcpy.sgml wcpncpy.sgml \
	wcscasecmp.sgml wcsdup.sgml wcsncasecmp.sgml wcsnlen.sgml wcsnrtombs.sgml \
	wcstoq.sgml wcstouq.sgml ngettext.sgml dgettext.sgml dngettext.sgml \
	dcgettext.sgml dcngettext.sgml bind_textdomain_codeset.sgml \
	pmap_getport.sgml pmap_set.sgml svc_run.sgml __register_atfork.sgml \
	_pthread_cleanup_pop.sgml _pthread_cleanup_push.sgml dladdr.sgml \
	dlopen.sgml dlsym.sgml

FILES=baselib.sgml 
GENFILES=libc.sgml libm.sgml libpthread.sgml libdl.sgml libcrypt.sgml \
	libpam.sgml libstdcxx.sgml

.m4.sgml:
	m4 -Uindex -Uformat -Usubstr $*.m4 >$@

all source: $(FILES) $(GENFILES)

gensrc:
	../../../mklibspec -a All -l libc >libc.sgml
	../../../mklibspec -a All -l libm >libm.sgml
	../../../mklibspec -a All -l libpthread >libpthread.sgml
	../../../mklibspec -a All -l libdl >libdl.sgml
	../../../mklibspec -a All -l libcrypt >libcrypt.sgml
	../../../mklibspec -a All -l libpam >libpam.sgml
	../../../mklibspec -a All -l libgcc_s | sed -e 's/ID=libgcc_s/ID=libgcc-s/' >libgcc_s.sgml
	../../../mklibspec -a All -c 1 -l libstdcxx -d | ../../../fixc++spec >libstdcxx.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(GENFILES) $(FILES)

baselib.sgml: baselib.m4 $(GENFILES) datadefs.sgml $(MANPAGES)
