
DB2HTML=sgmltools -b html

DB2RTF=sgmltools -b rtf

DB2PS=sgmltools -b ps

DB2PDF=sgmltools -b pdf

DOCUMENTS= lcd_faq

all:: htmlspec rtfspec 

htmlspec: source
	-for doc in $(DOCUMENTS); do rm -rf $$doc.junk; mv $$doc $$doc.junk; done
	for doc in $(DOCUMENTS); do $(DB2HTML) $$doc.sgml; done
	for doc in $(DOCUMENTS); do rm -rf $$doc.junk; done

rtfspec: source
	for doc in $(DOCUMENTS); do $(DB2RTF) $$doc.sgml; done

pdfspec: source
	for doc in $(DOCUMENTS); do $(DB2RTF) $$doc.sgml; done
	$(DB2PDF) $(SOURCES)

psspec: source
	for doc in $(DOCUMENTS); do $(DB2RTF) $$doc.sgml; done
	$(DB2PS) $(SOURCES)

source: $(DOCUMENTS:%=%.sgml)

gensrc:

clean::
	-for doc in $(DOCUMENTS); do rm -rf $$doc $$doc.junk $$doc.rtf $$doc.pdf $$doc.txt $$doc.ps; done

spotless::
	-rm *~


