
SRC= chap1-elf64abi.sgml chap2-elf64abi.sgml chap3-elf64abi.sgml \
	chap4-elf64abi.sgml chap5-elf64abi.sgml chap6-elf64abi.sgml \
	PPC-elf64abi.sgml

#DB2HTML=sgmltools -b html
DB2HTML=docbook2html -o spec -p '/usr/bin/jade -V %use-id-as-filename%'

#DB2RTF=sgmltools -b rtf
DB2RTF=docbook2rtf

DB2PS=sgmltools -b ps
#DB2PS=docbook2ps

#DB2PDF=sgmltools -b pdf
DB2PDF=docbook2pdf

#DB2ONEHTML=sgmltools -b onehtml
DB2ONEHTML=docbook2html -u

#DB2TXT=sgmltools -b txt
DB2TXT=docbook2text

htmlspec:  spec/book1.html 

spec/book1.html:
	$(DB2HTML) -o spec PPC-elf64abi.sgml

all:: htmlspec onehtmlspec rtfspec pdfspec psspec 

onehtmlspec: PPC-elf64abi.html

PPC-elf64abi.html:
	$(DB2ONEHTML) $(basename $@).sgml

rtfspec:  PPC-elf64abi.rtf

PPC-elf64abi.rtf: 
	$(DB2RTF) $(basename $@).sgml

pdfspec:   PPC-elf64abi.pdf

PPC-elf64abi.pdf:
	$(DB2PDF) $(basename $@).sgml

psspec:    PPC-elf64abi.ps

PPC-elf64abi.ps:
	$(DB2PS) $(basename $@).sgml

clean:
	rm -f *.html *.pdf *.ps *.rtf *.log *.dvi *.aux
	rm -rf lsELF

PPC-elf64abi.pdf: PPC-elf64abi.sgml chap1-elf64abi.sgml chap2-elf64abi.sgml chap3-elf64abi.sgml chap4-elf64abi.sgml chap5-elf64abi.sgml chap6-elf64abi.sgml 
PPC-elf64abi.rtf: PPC-elf64abi.sgml chap1-elf64abi.sgml chap2-elf64abi.sgml chap3-elf64abi.sgml chap4-elf64abi.sgml chap5-elf64abi.sgml chap6-elf64abi.sgml 
spec/book1.html:  PPC-elf64abi.sgml chap1-elf64abi.sgml chap2-elf64abi.sgml chap3-elf64abi.sgml chap4-elf64abi.sgml chap5-elf64abi.sgml chap6-elf64abi.sgml 
PPC-elf64abi.html: PPC-elf64abi.sgml chap1-elf64abi.sgml chap2-elf64abi.sgml chap3-elf64abi.sgml chap4-elf64abi.sgml chap5-elf64abi.sgml chap6-elf64abi.sgml 
