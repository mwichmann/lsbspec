
DOCDIRS=ELF Graphics LSB Packaging Graphics-Ext Toolkit_Gtk Toolkit_Qt XML Desktop
BOOKDIRS=book booksets
SUBDIRS= $(DOCDIRS) $(BOOKDIRS)

# These commands are those found on sourceforge.net. Please create your own
# wrapper script if needed instead of changing this
DB2HTML=sgmltools -b html

DB2RTF=sgmltools -b rtf

DB2PS=sgmltools -b ps

DB2PDF=sgmltools -b pdf

all::
	find . -name '*.m4' | xargs touch
	find . -name '*.sed' | xargs touch
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

all:: intlists

intlists:
	./mkintlist -A All >intlist.All.txt
	./mkintlist -A IA32 >intlist.IA32.txt
	./mkintlist -A IA64 >intlist.IA64.txt
	./mkintlist -A PPC32 >intlist.PPC32.txt
	./mkintlist -A PPC64 >intlist.PPC64.txt
	./mkintlist -A S390 >intlist.S390.txt
	./mkintlist -A S390X >intlist.S390X.txt
	./mkintlist -A X86-64 >intlist.AMD64.txt

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

source:
	for dir in $(SUBDIRS);do (cd $$dir && make source);done

autobuild:
	find . -name '*.m4' | xargs touch
	find . -name '*.sed' | xargs touch
	for dir in $(SUBDIRS);do (cd $$dir && make autobuild);done
	tar czf LSBrtfs.tar.gz `find book booksets -name '*.rtf' -o -name '*.eps'`

relbuild: intlists
	find . -name '*.m4' | xargs touch
	find . -name '*.sed' | xargs touch
	for dir in $(DOCDIRS);do (cd $$dir && make gensrc source);done
	for dir in $(BOOKDIRS);do (cd $$dir && make all);done
	tar czf LSBrtfs.tar.gz `find book booksets -name '*.rtf' -o -name '*.eps'`

clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

