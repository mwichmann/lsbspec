
.SUFFIXES: .sgml .cpp .m4

# this list needs to be updated as new manpages are added
# it may be easier to manage if left ordered by library
MANPAGES= sockio.sgml ttyio.sgml \
	_IO_feof.sgml _IO_getc.sgml _IO_putc.sgml _IO_puts.sgml \
	__assert_fail.sgml __ctype_b_loc.sgml __ctype_get_mb_cur_max.sgml \
	__ctype_tolower_loc.sgml __ctype_toupper_loc.sgml __cxa_atexit.sgml \
	__cxa_finalize.sgml __daylight.sgml __environ.sgml \
	__errno_location.sgml __fpending.sgml __fxstat.sgml __fxstat64.sgml \
	__fxstatat.sgml __fxstatat64.sgml __getpagesize.sgml __getpgid.sgml \
	__h_errno_location.sgml __isinf.sgml __isinff.sgml __isinfl.sgml \
	__isnan.sgml __isnanf.sgml __isnanl.sgml __libc_current_sigrtmax.sgml \
	__libc_current_sigrtmin.sgml __libc_start_main.sgml __lxstat.sgml \
	__lxstat64.sgml __mempcpy.sgml __rawmemchr.sgml __register_atfork.sgml \
	__sigsetjmp.sgml __stpcpy.sgml __strdup.sgml __strtod_internal.sgml \
	__strtof_internal.sgml __strtok_r.sgml __strtol_internal.sgml \
	__strtold_internal.sgml __strtoll_internal.sgml __strtoul_internal.sgml\
	__strtoull_internal.sgml __sysconf.sgml __sysv_signal.sgml \
	__timezone.sgml __tzname.sgml __wcstod_internal.sgml \
	__wcstof_internal.sgml __wcstol_internal.sgml __wcstold_internal.sgml \
	__wcstoul_internal.sgml __xmknod.sgml __xmknodat.sgml \
	__xpg_basename.sgml __xpg_sigpause.sgml __xpg_strerror_r.sgml \
	__xstat.sgml __xstat64.sgml _environ.sgml _nl_msg_cat_cntr.sgml \
	_sys_errlist.sgml _sys_siglist.sgml \
	acct.sgml adjtime.sgml alphasort64.sgml asprintf.sgml basename.sgml \
	bind_textdomain_codeset.sgml bindresvport.sgml bindtextdomain.sgml \
	cfmakeraw.sgml cfsetspeed.sgml clearerr_unlocked.sgml daemon.sgml \
	dcgettext.sgml dcngettext.sgml dgettext.sgml dngettext.sgml \
	drand48_r.sgml duplocale.sgml endutent.sgml erand48_r.sgml \
	epoll_create.sgml epoll_ctl.sgml epoll_wait.sgml \
	err.sgml error.sgml errx.sgml fcntl.sgml feof_unlocked.sgml \
	ferror_unlocked.sgml fflush_unlocked.sgml fgetc_unlocked.sgml \
	fgets_unlocked.sgml fgetwc_unlocked.sgml fgetws_unlocked.sgml \
	fileno_unlocked.sgml flock.sgml fputc_unlocked.sgml \
	fputs_unlocked.sgml fputwc_unlocked.sgml fputws_unlocked.sgml \
	fread_unlocked.sgml freelocale.sgml fscanf.sgml fstatfs.sgml \
	fstatfs64.sgml fwrite_unlocked.sgml fwscanf.sgml getdomainname.sgml \
	getdtablesize.sgml getgrent_r.sgml getgrouplist.sgml \
	gethostbyaddr_r.sgml gethostbyname2.sgml gethostbyname2_r.sgml \
	gethostbyname_r.sgml getloadavg.sgml getopt.sgml getopt_long.sgml \
	getopt_long_only.sgml getpagesize.sgml getprotobyname_r.sgml \
	getprotobynumber_r.sgml getprotoent_r.sgml getpwent_r.sgml \
	getservbyname_r.sgml getservbyport_r.sgml getservent_r.sgml \
	getsockopt.sgml gettext.sgml getutent.sgml getutent_r.sgml \
	getwc_unlocked.sgml getwchar_unlocked.sgml glob64.sgml globfree64.sgml \
	hcreate_r.sgml hdestroy_r.sgml hsearch_r.sgml inet_aton.sgml \
	initgroups.sgml initstate_r.sgml inotify_add_watch.sgml \
	inotify_init.sgml inotify_rm_watch.sgml ioctl.sgml \
	jrand48_r.sgml kill.sgml lcong48_r.sgml link.sgml lrand48_r.sgml \
	mbsnrtowcs.sgml memmem.sgml memrchr.sgml mkstemp64.sgml mrand48_r.sgml \
	mremap.sgml newlocale.sgml ngettext.sgml nrand48_r.sgml openat64.sgml \
	pmap_getport.sgml pmap_set.sgml pmap_unset.sgml posix_fadvise64.sgml \
	posix_fallocate64.sgml psignal.sgml putwc_unlocked.sgml \
	putwchar_unlocked.sgml random_r.sgml readdir64_r.sgml regexec.sgml \
	scandir64.sgml scanf.sgml sched_getaffinity.sgml \
	sched_setaffinity.sgml sched_setscheduler.sgml seed48_r.sgml \
	sendfile.sgml sendfile64.sgml setbuffer.sgml setgroups.sgml \
	sethostname.sgml setsockopt.sgml setstate_r.sgml setutent.sgml \
	sigandset.sgml sigisemptyset.sgml sigorset.sgml sigpause.sgml \
	sigreturn.sgml srand48_r.sgml srandom_r.sgml sscanf.sgml statfs.sgml \
	statfs64.sgml stime.sgml stpcpy.sgml stpncpy.sgml strcasestr.sgml \
	strerror_r.sgml strndup.sgml strnlen.sgml strptime.sgml strsep.sgml \
	strsignal.sgml strtoq.sgml strtouq.sgml svc_register.sgml svc_run.sgml \
	svc_sendreply.sgml svctcp_create.sgml svcudp_create.sgml swscanf.sgml \
	sysconf.sgml system.sgml textdomain.sgml unlink.sgml uselocale.sgml \
	utmpname.sgml vasprintf.sgml vdprintf.sgml verrx.sgml vfscanf.sgml \
	vfwscanf.sgml vscanf.sgml vsscanf.sgml vswscanf.sgml vsyslog.sgml \
	vwscanf.sgml wait4.sgml warn.sgml warnx.sgml wcpcpy.sgml wcpncpy.sgml \
	wcscasecmp.sgml wcsdup.sgml wcsncasecmp.sgml wcsnlen.sgml \
	wcsnrtombs.sgml wcstoq.sgml wcstouq.sgml wscanf.sgml xdr_u_int.sgml \
	xdrstdio_create.sgml \
	__chk_fail.sgml __fgets_chk.sgml __fgets_unlocked_chk.sgml \
	__fgetws_chk.sgml __fgetws_unlocked_chk.sgml __fprintf_chk.sgml \
	__fwprintf_chk.sgml __getcwd_chk.sgml __getgroups_chk.sgml \
	__gethostname_chk.sgml __getlogin_r_chk.sgml __mbsnrtowcs_chk.sgml \
	__mbsrtowcs_chk.sgml __mbstowcs_chk.sgml __memcpy_chk.sgml \
	__memmove_chk.sgml __mempcpy_chk.sgml __memset_chk.sgml \
	__pread64_chk.sgml __pread_chk.sgml __printf_chk.sgml \
	__read_chk.sgml __readlink_chk.sgml __realpath_chk.sgml \
	__recv_chk.sgml __recvfrom_chk.sgml __snprintf_chk.sgml \
	__sprintf_chk.sgml __stack_chk_fail.sgml __stpcpy_chk.sgml \
	__stpncpy_chk.sgml __strcat_chk.sgml __strcpy_chk.sgml \
	__strncat_chk.sgml __strncpy_chk.sgml __swprintf_chk.sgml \
	__syslog_chk.sgml __ttyname_r_chk.sgml __vfprintf_chk.sgml \
	__vfwprintf_chk.sgml __vprintf_chk.sgml __vsnprintf_chk.sgml \
	__vsprintf_chk.sgml __vswprintf_chk.sgml __vsyslog_chk.sgml \
	__vwprintf_chk.sgml __wcpcpy_chk.sgml __wcpncpy_chk.sgml \
	__wcrtomb_chk.sgml __wcscat_chk.sgml __wcscpy_chk.sgml \
	__wcsncat_chk.sgml __wcsncpy_chk.sgml __wcsnrtombs_chk.sgml \
	__wcsrtombs_chk.sgml __wcstombs_chk.sgml __wctomb_chk.sgml \
	__wmemcpy_chk.sgml __wmemmove_chk.sgml __wmempcpy_chk.sgml \
	__wmemset_chk.sgml __wprintf_chk.sgml \
	dladdr.sgml dlopen.sgml dlsym.sgml \
	__finite.sgml __finitef.sgml __finitel.sgml __fpclassify.sgml \
	__fpclassifyf.sgml __signbit.sgml __signbitf.sgml \
	clog10.sgml clog10f.sgml clog10l.sgml drem.sgml dremf.sgml \
	dreml.sgml exp10.sgml exp10f.sgml exp10l.sgml fedisableexcept.sgml \
	feenableexcept.sgml fegetexcept.sgml finite.sgml finitef.sgml \
	finitel.sgml gamma.sgml gammaf.sgml gammal.sgml j0f.sgml j0l.sgml \
	j1f.sgml j1l.sgml jnf.sgml jnl.sgml lgamma_r.sgml lgammaf_r.sgml \
	lgammal_r.sgml pow10.sgml pow10f.sgml pow10l.sgml scalbf.sgml \
	scalbl.sgml significand.sgml significandf.sgml significandl.sgml \
	sincos.sgml sincosf.sgml sincosl.sgml y0f.sgml y0l.sgml y1f.sgml \
	y1l.sgml ynf.sgml ynl.sgml \
	pam_acct_mgmt.sgml pam_authenticate.sgml pam_chauthtok.sgml \
	pam_close_session.sgml pam_end.sgml pam_fail_delay.sgml \
	pam_get_item.sgml pam_getenv.sgml pam_getenvlist.sgml \
	pam_open_session.sgml pam_putenv.sgml pam_set_item.sgml \
	pam_setcred.sgml pam_start.sgml pam_strerror.sgml \
	_pthread_cleanup_pop.sgml _pthread_cleanup_push.sgml \
	pread64.sgml pwrite64.sgml

FILES=baselib.sgml cxxlib.sgml
GENFILES=libc.sgml libm.sgml libpthread.sgml libdl.sgml libcrypt.sgml \
	libpam.sgml librt.sgml libgcc_s.sgml libstdcxx.sgml 
SCANFFILES=fscanf.sgml fwscanf.sgml scanf.sgml sscanf.sgml swscanf.sgml \
	vfscanf.sgml vfwscanf.sgml vscanf.sgml vsscanf.sgml vswscanf.sgml \
	vwscanf.sgml wscanf.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat -Usubstr $*.m4 >$@

all source: $(FILES) $(GENFILES)

$(SCANFFILES): scanf_diffs.sgml

gensrc:
	../../../mklibspec -a All -v `cat ../../target_version.generic` -l libc >libc.sgml
	../../../mklibspec -a All -v `cat ../../target_version.generic` -l libm >libm.sgml
	../../../mklibspec -a All -v `cat ../../target_version.generic` -l libpthread >libpthread.sgml
	../../../mklibspec -a All -v `cat ../../target_version.generic` -l libdl >libdl.sgml
	../../../mklibspec -a All -v `cat ../../target_version.generic` -l libcrypt >libcrypt.sgml
	../../../mklibspec -a All -v `cat ../../target_version.generic` -l libpam >libpam.sgml
	../../../mklibspec -a All -v `cat ../../target_version.generic` -l librt >librt.sgml
	../../../mklibspec -a All -v `cat ../../target_version.generic` -l libgcc_s | sed -e 's/ID=libgcc_s/ID=libgcc-s/' >libgcc_s.sgml
	../../../mklibspec -a All -v `cat ../../target_version.generic` -c 1 -l libstdcxx -d | ../../../fixc++spec >libstdcxx.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(GENFILES) $(FILES)

baselib.sgml: baselib.m4 $(GENFILES) datadefs.sgml $(MANPAGES)
cxxlib.sgml: cxxlib.m4 libstdcxx.sgml
