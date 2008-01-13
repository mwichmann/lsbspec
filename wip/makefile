
SUBDIRS= baselib intro lowlevel package sysinit

all:: buildspecs

autobuild:
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) gensrc source);done

source:
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) gensrc);done

clean::
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) spotless);done

