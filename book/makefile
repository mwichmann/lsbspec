GTK_SUBDIRS= Toolkit_Gtk-generic Toolkit_Gtk-AMD64 Toolkit_Gtk-IA32 \
	Toolkit_Gtk-IA64 Toolkit_Gtk-PPC32 Toolkit_Gtk-PPC64 \
	Toolkit_Gtk-S390 Toolkit_Gtk-S390X
QT3_SUBDIRS= Toolkit_Qt3-generic Toolkit_Qt3-AMD64 Toolkit_Qt3-IA32 \
	Toolkit_Qt3-IA64 Toolkit_Qt3-PPC32 Toolkit_Qt3-PPC64 \
	Toolkit_Qt3-S390 Toolkit_Qt3-S390X
QT4_SUBDIRS= Toolkit_Qt4-generic Toolkit_Qt4-AMD64 Toolkit_Qt4-IA32 \
	Toolkit_Qt4-IA64 Toolkit_Qt4-PPC32 Toolkit_Qt4-PPC64 \
	Toolkit_Qt4-S390 Toolkit_Qt4-S390X

SUBDIRS= Graphics errata wip \
	ELF-generic ELF-AMD64 ELF-IA32 ELF-IA64 \
	ELF-PPC32 ELF-PPC64 ELF-S390 ELF-S390X \
	LSB-generic LSB-AMD64 LSB-IA32 LSB-IA64 \
	LSB-PPC32 LSB-PPC64 LSB-S390 LSB-S390X \
	LSB-CXX-generic LSB-CXX-AMD64 LSB-CXX-IA32 LSB-CXX-IA64 \
	LSB-CXX-PPC32 LSB-CXX-PPC64 LSB-CXX-S390 LSB-CXX-S390X \
	Packaging-generic Packaging-AMD64 Packaging-IA32 Packaging-IA64 \
	Packaging-PPC32 Packaging-PPC64 Packaging-S390 Packaging-S390X \
	Graphics-Ext XML $(QT4_SUBDIRS)
	# $(GTK_SUBDIRS) $(QT3_SUBDIRS) 

all:
#	for dir in $(SUBDIRS);do (cd $$dir && make all);done

autobuild:
#	for dir in $(SUBDIRS);do (cd $$dir && make autobuild);done

gensrc:
#	for dir in $(SUBDIRS);do (cd $$dir && make gensrc);done

source:
#	for dir in $(SUBDIRS);do (cd $$dir && make source);done

clean:
#	for dir in $(SUBDIRS);do (cd $$dir && make clean);done
#	rm -f $(HTML)

spotless:
#	for dir in $(SUBDIRS);do (cd $$dir && make spotless);done
#	rm -f $(HTML)


