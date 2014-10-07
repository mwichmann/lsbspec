
DOCDIRS=Common Base ELF Packaging Security Core \
	Graphics Toolkit_Gtk Toolkit_Qt Toolkit_Independent Multimedia Desktop \
	Perl Python XML Languages \
	Print Scan Imaging \
	TUM TrialUse 

SUBDIRS= $(DOCDIRS)

# These commands are those found on sourceforge.net. Please create your own
# wrapper script if needed instead of changing this
DB2HTML=sgmltools -b html

DB2RTF=sgmltools -b rtf

DB2PS=sgmltools -b ps

DB2PDF=sgmltools -b pdf

all::
	find . -name '*.m4' | xargs touch
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) all);done

all:: intlists

intlists:
	./mkintlist -A All -v `cat ./target_version` >intlist.All.txt
	./mkintlist -A IA32 -v `cat ./target_version` >intlist.IA32.txt
	./mkintlist -A IA64 -v `cat ./target_version` >intlist.IA64.txt
	./mkintlist -A PPC32 -v `cat ./target_version` >intlist.PPC32.txt
	./mkintlist -A PPC64 -v `cat ./target_version` >intlist.PPC64.txt
	./mkintlist -A S390 -v `cat ./target_version` >intlist.S390.txt
	./mkintlist -A S390X -v `cat ./target_version` >intlist.S390X.txt
	./mkintlist -A X86-64 -v `cat ./target_version` >intlist.AMD64.txt

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) gensrc);done

source:
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) source);done

autobuild:
	find . -name '*.m4' | xargs touch
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) autobuild);done
	tar czf LSBrtfs.tar.gz `find book booksets -name '*.rtf' -o -name '*.eps'`

relbuild: intlists
	find . -name '*.m4' | xargs touch
	for dir in $(DOCDIRS);do (cd $$dir && $(MAKE) gensrc source);done

clean::
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) spotless);done

