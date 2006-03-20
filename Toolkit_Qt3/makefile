
SUBDIRS= generic intro IA32 IA64 AMD64 PPC32 PPC64 S390 S390X

all:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

autobuild:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

clean:
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done
	rm -f $(HTML)

spotless:
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done
	rm -f $(HTML)

