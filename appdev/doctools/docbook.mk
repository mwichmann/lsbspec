# $Progeny: docbook.mk,v 1.38 2002/03/06 18:53:06 jdaily Exp $

###############################################################################
# Functions

# Validate the XML file ${1}
validate= ${NSGMLS} ${NSGMLSVALIDATEARGS} ${1}

# Validate SGML files (man pages)
validate_sgml= ${NSGMLS} ${NSGMLSVALIDATESGML} ${1}

# Validate ${1} discarding output and bomb if not valid
validate_bomb= @sh -c '$(call validate,${1}) > /dev/null 2>&1 \
		|| (echo "${1} not valid, make validate for details"; exit 1)'

# Generate multiple HTML files from ${1}
chunk_html = $(call validate_bomb,${1}) \
		&& echo "${JADE} ${JADE2CHUNKHTMLARGS} ${JADEGENARGS} ${1}"; \
		${JADE} ${JADE2CHUNKHTMLARGS} ${JADEGENARGS} ${1}

# Find the program ${1} in the PATH; $(call pathsearch,ls) returns
# '/bin/ls' for example.
pathsearch= $(firstword $(wildcard $(addsuffix /${1},$(subst :, , ${PATH}))))

###############################################################################
# Variables

# Do we want to use DSSSL or XSL technologies for online (web, text)
# and print (pdf, ps) documentation formats?
# When jade is known to work again, PRINT_TECH should be dsssl.
# Eventually, both should be xsl, but the technologies are still immature,
# and kaffe doesn't meet all of our needs yet.
PRINT_TECH?=	dsssl
ONLINE_TECH?=	dsssl

# Commands
LN?=		/bin/ln
LN_S?=		${LN} -s

DVIPS?=		$(call pathsearch,dvips)
DOCBOOKTOMAN?=	$(call pathsearch,docbook-to-man)
HTML2TEXT?=	$(call pathsearch,html2text)
LPR?=		$(call pathsearch,lpr)
LINKS?=		$(call pathsearch,links)
LYNX?=		$(call pathsearch,lynx)
PSNUP?=		$(call pathsearch,psnup)
PS2PDF?=	$(call pathsearch,ps2pdf)
PDF2PS?=	$(call pathsearch,pdf2ps)

JADE?=		$(call pathsearch,jade)
JADETEX?=	$(call pathsearch,jadetex)
JAVA?=		$(call pathsearch,java)
NSGMLS?=	$(call pathsearch,onsgmls)
FOP?=		$(call pathsearch,fop)
XSLTPROC?=	$(call pathsearch,xsltproc)

FIG2DEV?=	$(call pathsearch,fig2dev)

# XML files
XMLDECL?=	/usr/lib/sgml/declaration/xml.dcl
PRINT_SS_DSSSL?=	${doctools}/ldp.dsl
HTML_SS_DSSSL?=		${PRINT_SS_DSSSL}
HTML_SS_XSL?=	/usr/share/sgml/docbook/stylesheet/xsl/nwalsh/xhtml/docbook.xsl
PROGENY_SS_FO?=		${doctools}/progeny-fo.xsl
PRINT_SS_FO?= 	/usr/share/sgml/docbook/stylesheet/xsl/nwalsh/fo/docbook.xsl

# XML command arguments
SAXONCLASS?=		com.icl.saxon.StyleSheet
XALANCLASS?=		org.apache.xalan.xslt.Process

NSGMLSVALIDATEARGS?=	-s -wxml ${XMLDECL}
NSGMLSVALIDATESGML?=	-s -wall

JADENOCHUNKARGS?=	-V nochunks
JADE2TEXARGS?=		-t tex -V tex-backend -iprint -d ${PRINT_SS_DSSSL}\#print
JADE2HTMLARGS?=		-t sgml -ihtml -d ${HTML_SS_DSSSL}\#html
JADE2CHUNKHTMLARGS?=	-t sgml -d ${PROGENY_SS_DSSSL}
JADE2TXTARGS?=		${JADE2HTMLARGS} ${JADENOCHUNKARGS}
JADEGENARGS?=		${XMLDECL}

# Arguments to convert .fig files to other formats. HTML image map is an
# interesting possibility that I have yet to really explore.
#
# Scaling is stored within the .fig file itself as part of the print or
# export process.
FIG2PNGARGS?=		-L png
FIG2JPGARGS?=		-L jpeg
FIG2EPSARGS?=		-L eps -z Letter
FIG2PSARGS?=		-L ps -z Letter

# HTML -> text translation
HTMLTOTEXT=		${LINKS} -dump

# The tex->dvi conversion apparently requires
# this, courtesy of
# http://people.debian.org/~bortz//SGML-HOWTO/potato/x165.html
MAX_TEX_RECURSION=4

CLASSDIR?=	/usr/share/java
# Should be set dynamically, but isn't yet.
# Note that I haven't found a Debian package with the proper batik.jar yet;
# I took it from the upstream FOP distribution.
CLASSPATH:=	${CLASSDIR}/saxon-6.4.4.jar:${CLASSDIR}/xalan.jar:${CLASSDIR}/bsf.jar:${CLASSDIR}/fop.jar:${CLASSDIR}/xerces.jar:${CLASSDIR}/batik.jar:${CLASSPATH}
export CLASSPATH

###############################################################################
# Rules

# Man pages

%.man: %.refentry
	${doctools}/man-wrapper.sh $< > $@

%.1: %.man
	${DOCBOOKTOMAN} $< > $@

%.2: %.man
	${DOCBOOKTOMAN} $< > $@

%.3: %.man
	${DOCBOOKTOMAN} $< > $@

%.4: %.man
	${DOCBOOKTOMAN} $< > $@

%.5: %.man
	${DOCBOOKTOMAN} $< > $@

%.6: %.man
	${DOCBOOKTOMAN} $< > $@

%.7: %.man
	${DOCBOOKTOMAN} $< > $@

%.8: %.man
	${DOCBOOKTOMAN} $< > $@

%.9: %.man
	${DOCBOOKTOMAN} $< > $@

# HTML and plain text files

ifeq (${ONLINE_TECH},xsl)
%.html: %.xml
	$(call validate_bomb,$<)
	${JAVA} ${SAXONCLASS} -o $@ $< ${HTML_SS_XSL}
else
%.html: %.xml
	$(call validate_bomb,$<)
	${JADE} ${JADENOCHUNKARGS} ${JADE2HTMLARGS} ${JADEGENARGS} $< > $@
endif

# DSSSL/XSL doesn't matter here
%.txt: %.html
	${HTMLTOTEXT} $< > $@

# Printable documents

# This doesn't need to be in the XSL section, because DSSSL doesn't mix
# with FO.
%.fo: %.xml
	${XSLTPROC} ${PRINT_SS_FO} $< > $@

ifeq (${PRINT_TECH},xsl)
#  XSL/Java technologies for printed output
%.pdf: %.fo
	${FOP} -fo $< -pdf $@

%.ps: %.pdf
	${PDF2PS} $< $@

else
#  DSSSL technologies for printed output
%.tex: %.xml
	-${JADE} ${JADE2TEXARGS} ${JADEGENARGS} $<

%.dvi: %.tex
        # Trick from Adam Di Carlo <adam@onshore.com> to recurse jadetex 
        # "just enough".
	-cp -pf prior.aux pprior.aux
	-cp -pf $(shell basename $< .tex).aux prior.aux
	${JADETEX} $<
	if ! cmp $(shell basename $< .tex).aux prior.aux &&             \
           ! cmp $(shell basename $< .tex).aux pprior.aux &&            \
           expr $(MAKELEVEL) '<' $(MAX_TEX_RECURSION); then             \
                rm -f $@                                                ;\
                ${MAKE} $@                                              ;\
	fi
	rm -f prior.aux pprior.aux

%.ps: %.dvi
	${DVIPS} -o $@ $<

%.pdf: %.ps
	${PS2PDF} $< $@
endif

# .fig conversion
%.eps: %.fig
	${FIG2DEV} ${FIG2EPSARGS} $< > $@

%.png: %.fig
	${FIG2DEV} ${FIG2PNGARGS} $< > $@

%.jpeg: %.fig
	${FIG2DEV} ${FIG2JPGARGS} $< > $@


.cvsignore: Makefile
	printf "%s\n" ".cvsignore ${IGNOREFILES}" > $@
