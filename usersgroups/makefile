
.SUFFIXES: .sgml .cpp .m4

FILES=usersgroups.sgml

.cpp.sgml:
	cpp -I../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 $*.m4 >$@

all: $(FILES) 

clean:
	rm -f $(FILES)

usersgroups.sgml:  usersgroups.m4
