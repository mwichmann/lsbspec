#
# This makefile puts together the database 
#
SETUP = setupdb.sql
TABLES = Architecture.sql ArchInt.sql Constant.sql Header.sql HeaderGroup.sql \
	Interface.sql LGInt.sql LibGroup.sql Library.sql Parameter.sql \
	Standard.sql Type.sql Version.sql VerInt.sql
PERMS = dbperms.sql
INITS = Architecture.init Standard.init Version.init

all:
	cat $(SETUP) $(TABLES) $(INITS) $(PERMS) | mysql -h $$LSBHOST -u $$LSBUSER
