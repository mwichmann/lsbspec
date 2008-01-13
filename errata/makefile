
SUBDIRS=intro objfmt baselib execenv

all: 
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) all);done

source:
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) source);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) gensrc);done

clean::
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) spotless);done

