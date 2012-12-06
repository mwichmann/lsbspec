
.SUFFIXES: .sgml .m4

FILES=liblist.sgml
TABLES=graphlist.sgml gtklist.sgml qtlist.sgml mmedialist.sgml #qt3list.sgml

.m4.sgml:
	m4 -P $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mklibapnd -a x86-64 -m LSB_Graphics -v `cat ../../../LSB/target_version.AMD64` >graphlist.sgml
	../../../mklibapnd -a x86-64 -m LSB_Multimedia -v `cat ../../../LSB/target_version.AMD64` >mmedialist.sgml
	../../../mklibapnd -a x86-64 -m LSB_Toolkit_Gtk -v `cat ../../../LSB/target_version.AMD64` >gtklist.sgml
	../../../mklibapnd -a x86-64 -m LSB_Toolkit_Qt -v `cat ../../../LSB/target_version.AMD64` >qtlist.sgml
	#../../../mklibapnd -a x86-64 -m LSB_Toolkit_Qt3 -v `cat ../../../LSB/target_version.AMD64` >qt3list.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

