ARCH=PPC64
DOC=LSB-PPC64

include ../Makefile.common

htmlspec: $(DOC).sgml source
	rm -rf $(DOC).junk
	-mv $(DOC) $(DOC).junk
	$(DB2HTML) $(DOC).sgml
	if [ -d $(DOC).junk/CVS -a ! -d $(DOC)/CVS ];then mv $(DOC).junk/CVS $(DOC); fi
	rm -rf $(DOC).junk
