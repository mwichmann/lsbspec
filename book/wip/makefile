
SUBDIRS= baselib intro lowlevel package sysinit

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

htmlspec: source
	rm -rf wip.junk
	-mv wip wip.junk
	$(DB2HTML) wip.sgml
	if [ -d wip.junk/CVS -a ! -d wip/CVS ];then mv wip.junk/CVS wip; fi
	rm -rf wip.junk

onehtmlspec: source
	$(DB2ONEHTML) wip.sgml

txtspec: source
	$(DB2TXT) wip.sgml
	nl -ba wip.txt > wip_lines.txt

rtfspec: source
	$(DB2RTF) wip.sgml

pdfspec: source
	$(DB2PDF) wip.sgml

psspec: source
	$(DB2PS) wip.sgml

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

wip.sgml: wip.sgml.sed
	sed -e "s#LSBVERSION#`date +"%Y%m%d"`#" <wip.sgml.sed >wip.sgml

autobuild: gensrc source
	echo `date +"%Y%m%d"` >buildversion
	sed -e "s#LSBVERSION#`date +"%Y%m%d"`#" <wip.sgml.sed >wip.sgml
	make buildspecs

clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

