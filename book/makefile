
SUBDIRS= Desktop ELF-generic \
	LSB-AMD64 LSB-IA32 LSB-IA64 LSB-PPC32 LSB-PPC64 LSB-S390 LSB-S390X \
	LSB-generic Packaging

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

