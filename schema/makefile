#
# This makefile puts together the database 
#
SETUP = setupdb.sql
TABLES = Architecture.sql Constant.sql Header.sql HeaderGroup.sql \
	Interface.sql LibGroup.sql Library.sql Parameter.sql \
	Standard.sql Version.sql
PERMS = dbperms.sql

all:
	cat $(SETUP) $(TABLES) $(PERMS) | mysql -h $$LSBHOST -u $$LSBUSER
