
DOCDIRS=ELF Graphics LSB Packaging Graphics-Ext Toolkit_Gtk Toolkit_Qt3 Toolkit_Qt XML Desktop
SUBDIRS= $(DOCDIRS)

# These commands are those found on sourceforge.net. Please create your own
# wrapper script if needed instead of changing this
DB2HTML=sgmltools -b html

DB2RTF=sgmltools -b rtf

DB2PS=sgmltools -b ps

DB2PDF=sgmltools -b pdf

all::
	find . -name '*.m4' | xargs touch
	find . -name '*.sed' | xargs touch
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) all);done

all:: intlists

intlists:
	./mkintlist -A All -v `cat ./LSB/version.generic` >intlist.All.txt
	./mkintlist -A IA32 -v `cat ./LSB/version.IA32` >intlist.IA32.txt
	./mkintlist -A IA64 -v `cat ./LSB/version.IA64` >intlist.IA64.txt
	./mkintlist -A PPC32 -v `cat ./LSB/version.PPC32` >intlist.PPC32.txt
	./mkintlist -A PPC64 -v `cat ./LSB/version.PPC64` >intlist.PPC64.txt
	./mkintlist -A S390 -v `cat ./LSB/version.S390` >intlist.S390.txt
	./mkintlist -A S390X -v `cat ./LSB/version.S390X` >intlist.S390X.txt
	./mkintlist -A X86-64 -v `cat ./LSB/version.AMD64` >intlist.AMD64.txt

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) gensrc);done

source:
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) source);done

autobuild:
	find . -name '*.m4' | xargs touch
	find . -name '*.sed' | xargs touch
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) autobuild);done
	tar czf LSBrtfs.tar.gz `find book booksets -name '*.rtf' -o -name '*.eps'`

relbuild: intlists
	find . -name '*.m4' | xargs touch
	find . -name '*.sed' | xargs touch
	for dir in $(DOCDIRS);do (cd $$dir && $(MAKE) gensrc source);done

clean::
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) spotless);done

