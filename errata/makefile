
SUBDIRS=intro objfmt baselib execenv

all: 
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

source:
	for dir in $(SUBDIRS);do (cd $$dir && make source);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

