
SUBDIRS= Desktop Graphics Packaging errata wip \
	ELF-AMD64 ELF-IA32 ELF-IA64 ELF-PPC32 ELF-PPC64 ELF-S390 ELF-S390X \
	ELF-generic \
	LSB-AMD64 LSB-IA32 LSB-IA64 LSB-PPC32 LSB-PPC64 LSB-S390 LSB-S390X \
	LSB-generic \
	Packaging-AMD64 Packaging-IA32 Packaging-IA64 Packaging-PPC32 \
	Packaging-PPC64 Packaging-S390 Packaging-S390X

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

