
SUBDIRS= graphlib opengl \
	libpng libjpeg fontconfig-commands libfontconfig \
	libXrender libfreetype libXft libcairo \
	libcairo-gobject libcairo-script-interpreter appendix

all:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

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

