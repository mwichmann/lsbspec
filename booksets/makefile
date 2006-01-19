
SUBDIRS= LSB-Core-generic \
	LSB-Core-AMD64 LSB-Core-IA32 LSB-Core-IA64 LSB-Core-PPC32 \
	LSB-Core-PPC64 LSB-Core-S390 LSB-Core-S390X \
	LSB-Embedded LSB-Graphics LSB-Desktop

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

