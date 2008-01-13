
SUBDIRS= LSB-Core-generic LSB-Core-AMD64 LSB-Core-IA32 LSB-Core-IA64 \
	LSB-Core-PPC32 LSB-Core-PPC64 LSB-Core-S390 LSB-Core-S390X \
	LSB-Graphics \
	LSB-Desktop-generic LSB-Desktop-AMD64 LSB-Desktop-IA32 \
	LSB-Desktop-IA64 LSB-Desktop-PPC32 LSB-Desktop-PPC64 \
	LSB-Desktop-S390 LSB-Desktop-S390X

all:
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) all);done

autobuild:
	for dir in $(SUBDIRS);do (cd $$dir && $(MAKE) autobuild);done

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

