
SUBDIRS=intro objfmt baselib package execenv

# These commands are those found on sourceforge.net. Please create your own
# wrapper script if needed instead of changing this
#
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o gLSB -p '/usr/bin/jade -V %use-id-as-filename%'

DB2RTF=sgmltools -b rtf
#DB2RTF=docbook2rtf -d ../docbook-utils.dsl\#print

DB2PS=sgmltools -b ps
#DB2PS=docbook2ps -d ../docbook-utils.dsl\#print

DB2PDF=sgmltools -b pdf
#DB2PDF=docbook2pdf -d ../docbook-utils.dsl\#print

DB2ONEHTML=sgmltools -b onehtml
#DB2ONEHTML=docbook2html -d ../docbook-utils.dsl\#html -u -p '/usr/bin/jade -V %use-id-as-filename%'

DB2TXT=sgmltools -b txt
#DB2TXT=docbook2txt -d ../docbook-utils.dsl\#print

all:: buildspecs

buildspecs: htmlspec onehtmlspec txtspec rtfspec

htmlspec: errata.sgml source
	rm -rf errata.junk
	-mv errata errata.junk
	$(DB2HTML) errata.sgml
	if [ -d errata.junk/CVS -a ! -d errata/CVS ];then mv errata.junk/CVS errata; fi
	rm -rf errata.junk

onehtmlspec: errata.sgml source
	$(DB2ONEHTML) errata.sgml

txtspec: errata.sgml source
	$(DB2TXT) errata.sgml
	nl -ba errata.txt > errata_lines.txt

rtfspec: errata.sgml source
	$(DB2RTF) errata.sgml

pdfspec: errata.sgml source
	$(DB2PDF) errata.sgml

psspec: errata.sgml source
	$(DB2PS) errata.sgml

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

errata.sgml: errata.sgml.sed
	sed -e "s#LSBVERSION#`date +"%Y%m%d"`#" <errata.sgml.sed >errata.sgml

autobuild: gensrc source
	echo `date +"%Y%m%d"` >buildversion
	sed -e "s#LSBVERSION#`date +"%Y%m%d"`#" <errata.sgml.sed >errata.sgml
	make buildspecs

clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

