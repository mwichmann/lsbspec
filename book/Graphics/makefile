
DB2HTML=sgmltools -b html
#DB2HTML=docbook2html -d ../docbook-utils.dsl\#html -o Graphics -p '/usr/bin/jade -V %use-id-as-filename%'

DB2RTF=sgmltools -b rtf
#DB2RTF=docbook2rtf -d ../docbook-utils.dsl\#print

DB2PS=sgmltools -b ps
#DB2PS=docbook2ps -d ../docbook-utils.dsl\#print

#DB2PDF=sgmltools -b pdf
DB2PDF=docbook2pdf -d ../docbook-utils.dsl\#print

DB2ONEHTML=sgmltools -b onehtml
#DB2ONEHTML=docbook2html -d ../docbook-utils.dsl\#html -u -p '/usr/bin/jade -V %use-id-as-filename%'

DB2TXT=sgmltools -b txt
#DB2TXT=docbook2txt -d ../docbook-utils.dsl\#print

all:: buildspecs

buildspecs: htmlspec rtfspec txtspec onehtmlspec linespec

htmlspec: Graphics.sgml source
	rm -rf Graphics.junk
	-mv Graphics Graphics.junk
	$(DB2HTML) Graphics.sgml
	if [ -d Graphics.junk/CVS -a ! -d Graphics/CVS ];then mv Graphics.junk/CVS Graphics; fi
	rm -rf Graphics.junk

onehtmlspec: Graphics.sgml source
	$(DB2ONEHTML) Graphics.sgml

txtspec: Graphics.sgml source
	$(DB2TXT) Graphics.sgml

linespec: Graphics_lines.txt

Graphics_lines.txt: Graphics.txt
	nl -ba Graphics.txt > Graphics_lines.txt

rtfspec: Graphics.sgml source
	$(DB2RTF) Graphics.sgml

pdfspec: Graphics.sgml source
	$(DB2PDF) Graphics.sgml

psspec: Graphics.sgml source
	$(DB2PS) Graphics.sgml

index: Graphics.sgml source
	collateindex.pl -N -o index.sgml
	$(DB2HTML) -j '-V %use-id-as-filename% -V html-index' Graphics.sgml
	collateindex.pl -o index.sgml HTML.index

source:
	for dir in $(SUBDIRS);do (cd $$dir && make all);done

gensrc:
	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

Graphics.sgml: Graphics.sgml.sed ../../Desktop/version
	echo `cat ../../Desktop/version` >buildversion
	sed -e "s#VERSION#`cat ../../Desktop/version`#" <Graphics.sgml.sed >Graphics.sgml

autobuild: gensrc source
	echo `cat ../../Desktop/version`-`date +"%Y%m%d"` >buildversion
	sed -e "s#VERSION#`cat ../../Desktop/version`-`date +"%Y%m%d"`#" <Graphics.sgml.sed >Graphics.sgml
	make buildspecs
	
clean::
	for dir in $(SUBDIRS);do (cd $$dir && make clean);done

spotless::
	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done

