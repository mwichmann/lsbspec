
SUBDIRS= AMD64 IA32 IA64 PPC32 PPC64 S390 S390X generic

all:
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) all);done

autobuild:
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) gensrc source);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) gensrc);done

source:
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) source);done

clean:
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) clean);done
	rm -f $(HTML)

spotless:
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) spotless);done
	rm -f $(HTML)

