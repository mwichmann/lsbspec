HTML=glibcx86-206.html glibcx86-210.html glibcaxp-206.html \
	glibcnotsys.html sysnotglibc.html \
	glibcnotSUS.html SUSnotglibc.html \
	SUSnotsys.html sysnotSUS.html \
	SUSnotLSB.html LSBnotSUS.html \
	glibc21notglibc20.html glibc211notglibc21.html \
	GL12notGL11.html pthread8notphtread7.html \
	pthreadnotpthread0.html pthread0notpthread.html \
	libm6notlibm.html libmnotlibm6.html \
	libXt6notlibXt.html libXtnotlibXt6.html \
	SUS.html POSIX.1.html POSIX.2.html \
	libX11-61.html libXt-60.html libXext-60.html

TABLES = baselib/libsysansi.sgml baselib/libsyspsoxi.sgml

SUBDIRS=intro objfmt baselib utillib graphlib sysinit usersgroups command

# These commands are those found on sourceforge.net. Please create your own
# wrapper script if needed instead of changing this
DB2HTML=sgml2html -s 2

DB2RTF=sgml2rtf

DB2PS=sgml2ps

all:: htmlspec rtfspec

htmlspec: source
	rm -rf spec.junk
	-mv spec spec.junk
	$(DB2HTML) spec.sgml
	if [ -d spec.junk/CVS -a ! -d spec/CVS ];then mv spec.junk/CVS spec; fi
# I don't see an images directory in CVS, nor do the files in spec/*.html
# seem to be looking for any images.
#	cp images/*.gif spec

rtfspec: source
	$(DB2RTF) spec.sgml

psspec: source
	$(DB2PS) spec.sgml

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

all:: $(HTML)

html: $(HTML)

glibcx86-206.html::
	./mkinterfacetable Lname=glibcx86-206 >glibcx86-206.html

glibcx86-210.html::
	./mkinterfacetable Lname=glibcx86-210 >glibcx86-210.html

glibcaxp-206.html::
	./mkinterfacetable Lname=glibcaxp-206 >glibcaxp-206.html

libX11-61.html::
	./mkinterfacetable Lname=libX11-61 >libX11-61.html

libXt-60.html::
	./mkinterfacetable Lname=libXt-60 >libXt-60.html

libXext-60.html::
	./mkinterfacetable Lname=libXext-60 >libXext-60.html

glibcnotsys.html::
	./diffinterfacetable nLname=libc Lname=glibcx86-210 >glibcnotsys.html

sysnotglibc.html::
	./diffinterfacetable Lname=libc nLname=glibcx86-210 >sysnotglibc.html

pthread0notpthread.html::
	./diffinterfacetable nLname=libpthread Lname=libpthreadx86-07 >pthread0notpthread.html

pthreadnotpthread0.html::
	./diffinterfacetable Lname=libpthread nLname=libpthreadx86-07 >pthreadnotpthread0.html

glibcnotSUS.html::
	./diffinterfacetable nLname=SUS Lname=glibcx86-210 >glibcnotSUS.html

SUSnotglibc.html::
	./diffinterfacetable Lname=SUS nLname=glibcx86-210 nLname=libmx86 nLname=libpthreadx86-07 nLname=libdbx86-207 nLname=libnslx86-207 nLname=libdlx86-2 nLname-libcryptx86-2.1.1>SUSnotglibc.html

SUSnotsys.html::
	./diffinterfacetable Lname=SUS nLname=libc >SUSnotsys.html

sysnotSUS.html::
	./diffinterfacetable nLname=SUS Lname=libc >sysnotSUS.html

#
# Note: libxti is explicitely not part of the LSB, but even that means
# the interfaces have been accounted for
#
SUSnotLSB.html::
	./diffinterfacetable Lname=SUS nLname=libc nLname=libm nLname=libpthread nLname=libdb nLname=libnsl nLname=libdl nLname=libcrypt nLname=libxti >SUSnotLSB.html

LSBnotSUS.html::
	./diffinterfacetable nLname=SUS Lname=libc Lname=libm Lname=libpthread Lname=libdb Lname=libnsl Lname=libdl Lname=libcrypt >LSBnotSUS.html

libm6notlibm.html::
	./diffinterfacetable nLname=libm Lname=libmx86 >libm6notlibm.html

libmnotlibm6.html::
	./diffinterfacetable Lname=libm nLname=libmx86 >libmnotlibm6.html

libXt6notlibXt.html::
	./diffinterfacetable nLname=libXt Lname=libXt-60 >libXt6notlibXt.html

libXtnotlibXt6.html::
	./diffinterfacetable Lname=libXt nLname=libXt-60 >libXtnotlibXt6.html

glibc211notglibc21.html::
	./diffinterfacetable nLname=glibcx86-210 Lname=glibcx86-211 >glibc211notglibc21.html

glibc21notglibc20.html::
	./diffinterfacetable nLname=glibcx86-206 Lname=glibcx86-210 >glibc21notglibc20.html

GL12notGL11.html::
	./diffinterfacetable nLname=libGL1.1 Lname=libGL1.2 >GL12notGL11.html

pthread8notphtread7.html::
	./diffinterfacetable nLname=libpthreadx86-07 Lname=libpthreadx86-08 >pthread8notphtread7.html

POSIX.1.html::
	./mkspectable Sname=POSIX.1 >POSIX.1.html

POSIX.2.html::
	./mkspectable Sname=POSIX.2 >POSIX.2.html

SUS.html::
	./mkinterfacetable Lname=SUS >SUS.html


clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done
	rm -f $(HTML)
