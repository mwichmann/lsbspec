How to hack on the LSB spec
---------------------------

We'll start with the apologies.  This is all going to seem like a
complicated way to maintain a specification document.  However, all
this database stuff does make it easier to do things like "show me
which interfaces are in POSIX.2 but not the Linux Standard Base" or
"show me the interfaces which are in the Linux Standard Base but not
the Single Unix Specification".

1.  Get a copy of mysql.  I used mysql from Red Hat Powertools 6.1,
but any copy of mysql should do (http://www.tcx.se/ being the master
site).  I'm using 3.20.32a which is the latest GPL'd version as I
write this.

2.  As root, give your regular (non-root) user access to the database.
Put your username in place of YOURSELF

# mysql mysql
insert into user values ('%','YOURSELF','','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y') ;
insert into user values ('localhost','YOURSELF','','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y') ;
quit
# mysqladmin reload

(see the mySQL FAQ for how to do things if you aren't root)

3.  Create a database called "Linux":

$ mysqladmin create Linux

4.  Load data into database:

$ cd data
$ make reload-kludge    # For MySQL 3.20.*
$ make reload-db        # For MySQL 3.22.* and later

If you get:

  ERROR: Invalid default value for 'Cname'

then you probably used "make reload-db" with MySQL 3.20.*.

5.  The makefile for "make reload-kludge" and "make reload-db" assumes
you are editing Linux.sql as the master data source and using mysql as
a slave to that.  So if you are making modifications in the database
you don't want those rules.

6.  Need sgmltools.

7.  Next step: figure out all the sgml generating scripts
(e.g. makefile in this directory) and such.
