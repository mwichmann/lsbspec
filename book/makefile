
SUBDIRS= Graphics errata wip \
	ELF-AMD64 ELF-IA32 ELF-IA64 ELF-M32R ELF-PPC32 ELF-PPC64 ELF-S390 ELF-S390X \
	ELF-generic \
	LSB-AMD64 LSB-IA32 LSB-IA64 LSB-PPC32 LSB-PPC64 LSB-S390 LSB-S390X \
	LSB-generic \
	LSB-CXX-AMD64 LSB-CXX-IA32 LSB-CXX-IA64 LSB-CXX-PPC32 LSB-CXX-PPC64 \
	LSB-CXX-S390 LSB-CXX-S390X \
	LSB-CXX-generic \
	Packaging-AMD64 Packaging-IA32 Packaging-IA64 Packaging-PPC32 \
	Packaging-PPC64 Packaging-S390 Packaging-S390X \
	Packaging-generic \
	Graphics-Ext Toolkit_Gtk Toolkit_Qt XML Desktop

all:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

autobuild:
	for dir in $(SUBDIRS);do (cd $$dir && make autobuild);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

source:
	for dir in $(SUBDIRS);do (cd $$dir && make source);done

clean:
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done
	rm -f $(HTML)

spotless:
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done
	rm -f $(HTML)


