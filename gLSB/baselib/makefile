
.SUFFIXES: .sgml .cpp .m4

MANPAGES=__assert_fail.sgml __clone.sgml __errno_location.sgml \
	__h_errno_location.sgml __strtod_internal.sgml \
	__strtof_internal.sgml __strtol_internal.sgml __strtoul_internal.sgml \
	__xstat.sgml __xstat64.sgml \
	select.sgml _IO_2_1_stderr_.sgml _IO_2_1_stdin_.sgml \
	_IO_2_1_stdout_.sgml _IO_feof.sgml _IO_getc.sgml _IO_putc.sgml \
	_IO_puts.sgml __bzero.sgml __ctype_get_mb_cur_max.sgml __getpgid.sgml \
	__libc_current_sigrtmax.sgml __libc_current_sigrtmin.sgml \
	__mbrlen.sgml __secure_getenv.sgml __sigpause.sgml __sigsetjmp.sgml \
	__strdup.sgml __strtok_r.sgml __strtold_internal.sgml \
	__strtoll_internal.sgml __strtoull_internal.sgml __sysv_signal.sgml \
	__wcstod_internal.sgml __wcstof_internal.sgml __wcstol_internal.sgml \
	__wcstold_internal.sgml __wcstoll_internal.sgml __wcstoul_internal.sgml\
	__wcstoull_internal.sgml __xmknod.sgml

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
