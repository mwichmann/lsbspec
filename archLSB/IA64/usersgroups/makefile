
.SUFFIXES: .sgml .cpp .m4

FILES = usersgroups.sgml
#TABLES = usersgroupscmds.sgml usersgroupsints.sgml

.cpp.sgml:
	cpp -I../../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	#./mkusergrpcmds > usersgroupscmds.sgml
	#./mkusergrpint > usersgroupsints.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)

usersgroups.sgml:  $(TABLES)

