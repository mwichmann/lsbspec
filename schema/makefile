#
# This makefile puts together the database 
#
SETUP = setupdb.sql
TABLES = Interface.sql LibGroup.sql Library.sql Parameter.sql Standard.sql
PERMS = dbperms.sql

all:
	cat $(SETUP) $(TABLES) $(PERMS) | mysql -h $$LSBHOST -u $$LSBUSER
