
.SUFFIXES: .sgml .m4

FILES=liblist.sgml
TABLES=graphlist.sgml gtklist.sgml qtlist.sgml mmedialist.sgml #qt3list.sgml

.m4.sgml:
	m4 -P $*.m4 >$@

all source: $(FILES) $(TABLES)

gensrc:
	../../../mklibapnd -a All -m LSB_Graphics -v `cat ../../../LSB/target_version.generic` >graphlist.sgml
	../../../mklibapnd -a All -m LSB_Multimedia -v `cat ../../../LSB/target_version.generic` >mmedialist.sgml
	../../../mklibapnd -a All -m LSB_Toolkit_Gtk -v `cat ../../../LSB/target_version.generic` >gtklist.sgml
	../../../mklibapnd -a All -m LSB_Toolkit_Qt -v `cat ../../../LSB/target_version.generic` >qtlist.sgml
	#../../../mklibapnd -a All -m LSB_Toolkit_Qt3 -v `cat ../../../LSB/target_version.generic` >qt3list.sgml


clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

