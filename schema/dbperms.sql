#
# This permission scheme allows two users to be defined
#
# lsbuser
#	This user may browse the DB, but not make any changes.
#
# lsbadmin
#	This user may make any changes to the DB.
#

#
# Open up these tables for the LSB db admin
#
GRANT INSERT,UPDATE,DELETE on lsb.Standard TO lsbadmin;
#
# The rest should be "read Only" from the localhost
#
GRANT SELECT on lsb.* to lsbuser;
GRANT SELECT on lsb.* to lsbadmin;
#
# Make it take affect
#
FLUSH PRIVILEGES

