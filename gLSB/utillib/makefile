
.SUFFIXES: .sgml .cpp .m4

FILES=utillib.sgml libz.sgml libcurses.sgml libutil.sgml
TABLES=

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../mklibspec -a All -l libz >libz.sgml
	../../mklibspec -a All -l libncurses >libcurses.sgml
	../../mklibspec -a All -l libutil >libutil.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


utillib.sgml:  libz.sgml libcurses.sgml libutil.sgml \
	forkpty.sgml getutent_r.sgml getutid_r.sgml getutline_r.sgml \
	login.sgml login_tty.sgml logout.sgml openpty.sgml \
	mkfifo.sgml  mknod.sgml getopt.sgml
