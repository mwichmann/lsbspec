# $Progeny: Makefile,v 1.20 2002/02/27 15:27:28 schultmc Exp $

doctools=doctools

JADE=		jade
PRINT_TECH=	dsssl
DOC=		lsb-app-devguide

XML_FILES=	\
		lsb-app-devguide.xml \
		packaging.xml \
		mechanics.xml \
		resources.xml \
		examples.xml \
		definitions.xml \
		buildtools.xml \
		guidelines.xml \
		checklist.xml \
		debian.xml \
		redhat.xml \
		intro.xml \
		credits.xml

IGNOREFILES=	*.html lsb-app-devguide.ps lsb-app-devguide.pdf lsb-app-devguide.txt

all: .cvsignore $(DOC).ps $(DOC).pdf $(DOC).html $(DOC).txt

lsb-app-devguide1.html: ${XML_FILES}
	$(call chunk_html,book.xml)

lsb-app-devguide.html: ${XML_FILES}
lsb-app-devguide.pdf: ${XML_FILES}
lsb-app-devguide.ps: ${XML_FILES}

validate:
	$(call validate,lsb-app-devguide.xml)

clean:
	# Remove files leftover by PostScript generation 
	rm -f *.aux *.log *.tex

maintainer-clean: clean
	rm -f *.html *.ps *.pdf lsb-app-devguide.txt

.PHONY: all validate clean maintainer-clean

include ${doctools}/docbook.mk
