ARCH=PPC32
DOC=LSB-PPC32

include ../Makefile.common

htmlspec: LSB-PPC32.sgml source
	rm -rf LSB-PPC32.junk
	-mv LSB-PPC32 LSB-PPC32.junk
	$(DB2HTML) LSB-PPC32.sgml
	if [ -d LSB-PPC32.junk/CVS -a ! -d LSB-PPC32/CVS ];then mv LSB-PPC32.junk/CVS LSB-PPC32; fi
	rm -rf LSB-PPC32.junk
