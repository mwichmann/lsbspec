
SUBDIRS= GTK  appendix

all:
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) all);done

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

