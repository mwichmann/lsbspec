How to hack on the LSB spec
---------------------------

We'll start with the apologies.  This is all going to seem like a
complicated way to maintain a specification document.  However, all
this database stuff does make it easier to do things like "show me
which interfaces are in POSIX.2 but not the Linux Standard Base" or
"show me the interfaces which are in the Linux Standard Base but not
the Single Unix Specification"..

1.  Get a copy of mysql.  I used mysql from Red Hat Powertools 6.1,
but any copy of mysql should do (http://www.tcx.se/ being the master
site).

2.  Create a database called "Linux":

# mysqladmin create Linux

(see the mySQL FAQ for how to do things if you aren't root)

3.  As root, give your regular (non-root) user access to the database.
Put your username in place of YOURSELF

# mysql mysql
insert into user values ('%','YOURSELF','','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y') ;
insert into user values ('localhost','YOURSELF','','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y') ;
quit
# mysqladmin reload

4.  Load data into database:

$ mysql Linux <data/Linux.sql 

If you get:

  ERROR: Invalid default value for 'Cname'

then you are in the same boat as me :-).
