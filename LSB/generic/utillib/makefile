
.SUFFIXES: .sgml .cpp .m4

FILES=utillib.sgml libz.sgml libcurses.sgml libutil.sgml

TABLES=

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uindex -Uformat $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a All -l libz >libz.sgml
	../../../mklibspec -a All -l libncurses >libcurses.sgml
	../../../mklibspec -a All -l libutil >libutil.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


utillib.sgml:  libz.sgml libcurses.sgml libutil.sgml \
	forkpty.sgml \
	login.sgml login_tty.sgml logout.sgml openpty.sgml \
	mkfifo.sgml mknod.sgml logwtmp.sgml \
	gzopen.sgml gzdopen.sgml gzread.sgml gzerror.sgml \
	gzwrite.sgml gzsetparams.sgml gzprintf.sgml \
	gzputc.sgml gzputs.sgml gzgets.sgml gzgetc.sgml \
	gzeof.sgml gztell.sgml gzflush.sgml gzseek.sgml \
	gzrewind.sgml \
	compress.sgml compress2.sgml uncompress.sgml \
	deflate.sgml inflate.sgml deflateParams.sgml \
	adler32.sgml crc32.sgml get_crc_table.sgml \
	deflateInit2_.sgml inflateInit2_.sgml zlibVersion.sgml \
	deflateCopy.sgml deflateEnd.sgml inflateEnd.sgml zError.sgml \
	deflateSetDictionary.sgml inflateSetDictionary.sgml \
	inflateSync.sgml inflateSyncPoint.sgml \
	deflateBound.sgml compressBound.sgml


