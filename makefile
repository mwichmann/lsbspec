
SUBDIRS=gLSB archLSB

# These commands are those found on sourceforge.net. Please create your own
# wrapper script if needed instead of changing this
DB2HTML=sgmltools -b html

DB2RTF=sgmltools -b rtf

DB2PS=sgmltools -b ps

DB2PDF=sgmltools -b pdf

all::
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

all::
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

clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

