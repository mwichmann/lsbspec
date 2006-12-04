
SUBDIRS= baselib intro lowlevel package sysinit

all:: buildspecs

autobuild:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc source);done

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

