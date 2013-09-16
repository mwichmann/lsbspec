TOP=../../..

.SUFFIXES: .sgml .m4

MANPAGES= forkpty.sgml login.sgml login_tty.sgml logout.sgml \
	logwtmp.sgml openpty.sgml \
	adler32.sgml compress2.sgml compressBound.sgml compress.sgml \
	crc32.sgml deflateBound.sgml deflateCopy.sgml deflateEnd.sgml \
	deflateInit2_.sgml deflateInit_.sgml deflateParams.sgml \
	deflateReset.sgml deflateSetDictionary.sgml deflate.sgml \
	get_crc_table.sgml gzclose.sgml gzdopen.sgml gzeof.sgml \
	gzerror.sgml gzflush.sgml gzgetc.sgml gzgets.sgml gzopen.sgml \
	gzprintf.sgml gzputc.sgml gzputs.sgml gzread.sgml gzrewind.sgml \
	gzseek.sgml gzsetparams.sgml gztell.sgml gzwrite.sgml \
	inflateEnd.sgml inflateInit2_.sgml inflateInit_.sgml \
	inflateReset.sgml inflateSetDictionary.sgml inflate.sgml \
	inflateSyncPoint.sgml inflateSync.sgml uncompress.sgml \
	zError.sgml zlibVersion.sgml \
	inchnstr.sgml inchstr.sgml instr.sgml mvinchnstr.sgml mvinchstr.sgml \
	mvinstr.sgml mvscanw.sgml mvwinchnstr.sgml mvwinchstr.sgml \
	mvwinstr.sgml mvwscanw.sgml ripoffline.sgml scanw.sgml wscanw.sgml \
	vw_scanw.sgml vwscanw.sgml winchnstr.sgml winchstr.sgml winstr.sgml mvcur.sgml 
FILES=utillib.sgml
GENFILES=libz.sgml libcurses.sgml libutil.sgml
SCANWFILES= mvscanw.sgml mvwscanw.sgml scanw.sgml \
	vw_scanw.sgml vwscanw.sgml wscanw.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat $*.m4 >$@

all source: $(FILES) $(GENFILES)

$(SCANWFILES): scanw_diffs.sgml

gensrc:
	$(TOP)/mklibspec -a All -v `cat $(TOP)/target_version` -l libz >libz.sgml
	$(TOP)/mklibspec -a All -v `cat $(TOP)/target_version` -l libncurses >libcurses.sgml
	$(TOP)/mklibspec -a All -v `cat $(TOP)/target_version` -l libutil >libutil.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(GENFILES)

utillib.sgml: utillib.m4 $(GENFILES) $(MANPAGES)

manpages: $(MANPAGES)

