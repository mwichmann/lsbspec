include ../Makefile.common

htmlspec: source
	rm -rf spec.junk
	-mv spec spec.junk
	$(DB2HTML) spec.sgml
	if [ -d spec.junk/CVS -a ! -d spec/CVS ];then \
	  mv spec.junk/CVS spec; \
	  mkdir spec/lowlevel; \
	  cp lowlevel/initial_process_stack.jpg spec/lowlevel/ ; \
	  mv spec.junk/lowlevel/CVS spec/lowlevel; \
	fi
	rm -rf spec.junk

