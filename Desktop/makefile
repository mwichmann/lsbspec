
SUBDIRS= intro

all:
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) all);done

autobuild:
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) gensrc all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) gensrc);done

source:
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) all);done

clean:
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) clean);done
	rm -f $(HTML)

spotless:
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) spotless);done
	rm -f $(HTML)

