<PART ID="tocusersgroups">
<TITLE>Users & Groups</TITLE>

<CHAPTER ID="usersgroups">
<TITLE>Users & Groups</TITLE>
<PARA>
A "user name" is a string that is used to identify a user.  A "login name" is
a user name that is associated with a system login.   A "user id" is a non
negative integer, which can be contained in an object of type
uid_t, that is used to identify a system user.  
When the identify of a user is associated with a process, a user ID value is 
referred to as a real user ID, or an effective user ID.  [POSIX 1.003.1-1996]
</PARA>
<PARA>
A "group name" is a string that is used to identify a set of users.  
A "group id" is a non negative interger, which can be contained in a object 
of type gid_t, that is used to identify a group of system users.
Each system user is a member of at least one group.   When the identity of a
group is associated with a process, agroup ID value is referred to as a real 
group ID, or an effective group ID.  [POSIX 1003.1-1996]
</PARA>

<SECT1 ID="password">
<TITLE>User Database</TITLE>
<PARA>
The passwd(5) user database should only be read and updated form the 
following APIs: getpwent(3), setpwent(3), endpwent(3), getpwnam(3),
getpwuid(3), putpwent(3), and passwd(1).  
The layout of the passwd(5) file is not specified by this standard,
because it is access via an API.
</PARA>
<PARA>
If the initial user program field is null, the system default is used.  
If the initial working directory field is null, the interpretation of 
that field is implementation defined.
</PARA>
</SECT1>

<SECT1 ID="group">
<TITLE>Group Database</TITLE>
<PARA>
The group(5) user database should only be read from the following APIs:
getgrent(3), setgrent(3), sendgrent(3), and groups(1).
The layout of the group(5) file is not specified by this standard, because
it is access via an API.
</PARA>
<PARA>
There are no group write APIs. To change
the group database, use the system adminstration commands
groupadd(1), groupdel(1), groupmod(1) instead of API calls.
Use the usermod(1) command to add or remove a user to/from
supplementary groups.
Do not change a present group database file directly.
</PARA>
</SECT1>

<SECT1 ID="userlibs">
<TITLE>Library Functions</TITLE>
<PARA>
There are many APIs in this specification that read, write, and/or create 
password and group entries; however, below are those APIs not included
in the specification.
</PARA>
<PARA>
SVID APIs fgetgrent(2) and fgetpwent(2) are superceeded by 
getgrent(2) and getpwent(2).
</PARA>
<PARA>
The APIs getresuid(2), getpwuid(2), setfsuid(2), setfsgid(2), setresuid(2), 
setresgid(2) are GNU/Linux specific.  These are included in the LSB 
specification; however, these may be a portability issue for other UNIX and 
UNIX-like systems.
</PARA>
</SECT1>

<SECT1 ID="usernames">
<TITLE>User & Group Names</TITLE>
<PARA>
Below is a table of required mnemonic user and group names.   This 
specification makes no attempt to numerically assign uid or gid numbers.
The exceptions are the uid and gid for "root" which is equal to 0, and 
the uid and gid for "bin" which is equal to 1.
</PARA>
<TABLE>
<TITLE>Required User & Group Names</TITLE>
<TGROUP COLS=3>
<TBODY>
<ROW><ENTRY>User</ENTRY><ENTRY>Group</ENTRY><ENTRY>Comments</ENTRY></ROW>
<ROW><ENTRY>root</ENTRY><ENTRY>root</ENTRY><ENTRY>Administrative user with no restrictions</ENTRY></ROW>
<ROW><ENTRY>bin</ENTRY><ENTRY>bin</ENTRY><ENTRY>Administrative user with some restrictions</ENTRY></ROW>
<ROW><ENTRY>daemon</ENTRY><ENTRY>daemon</ENTRY><ENTRY>Subprocess special privileges</ENTRY></ROW>
</TBODY>
</TGROUP>
</TABLE>
<PARA>
Below is a table of optional mnemonic user and group names.   This 
specification makes no attempt to numerically assign uid or gid numbers.
If the username exists on a system, then they should be in the suggested
corresponding group.
</PARA>
<TABLE>
<TITLE>Optional User & Group Names</TITLE>
<TGROUP COLS=3>
<TBODY>
<ROW><ENTRY>User</ENTRY><ENTRY>Group</ENTRY><ENTRY>Comments</ENTRY></ROW>
<ROW><ENTRY>adm</ENTRY><ENTRY>adm</ENTRY><ENTRY>Administrative special privileges</ENTRY></ROW>
<ROW><ENTRY>lp</ENTRY><ENTRY>lp</ENTRY><ENTRY>Printer special privileges</ENTRY></ROW>
<ROW><ENTRY>sync</ENTRY><ENTRY>sync</ENTRY><ENTRY>Login to sync the system</ENTRY></ROW>
<ROW><ENTRY>shutdown</ENTRY><ENTRY>shutdown</ENTRY><ENTRY>Login to shutdown the system</ENTRY></ROW>
<ROW><ENTRY>halt</ENTRY><ENTRY>halt</ENTRY><ENTRY>Login to halt the system</ENTRY></ROW>
<ROW><ENTRY>mail</ENTRY><ENTRY>mail</ENTRY><ENTRY>Mail special privileges</ENTRY></ROW>
<ROW><ENTRY>news</ENTRY><ENTRY>news</ENTRY><ENTRY>News special privileges</ENTRY></ROW>
<ROW><ENTRY>uucp</ENTRY><ENTRY>uucp</ENTRY><ENTRY>UUCP special privileges</ENTRY></ROW>
<ROW><ENTRY>operator</ENTRY><ENTRY>root</ENTRY><ENTRY>Operator special privileges</ENTRY></ROW>
<ROW><ENTRY>games</ENTRY><ENTRY>users</ENTRY><ENTRY>Games</ENTRY></ROW>
<ROW><ENTRY>gopher</ENTRY><ENTRY>gopher</ENTRY><ENTRY>Gopher special privileges</ENTRY></ROW>
<ROW><ENTRY>ftp</ENTRY><ENTRY>ftp</ENTRY><ENTRY>FTP special privileges</ENTRY></ROW>
<ROW><ENTRY>man</ENTRY><ENTRY>man</ENTRY><ENTRY>Man special privileges</ENTRY></ROW>
<ROW><ENTRY>majordom</ENTRY><ENTRY>majordom</ENTRY><ENTRY></ENTRY></ROW>
<ROW><ENTRY>gdm</ENTRY><ENTRY>gdm</ENTRY><ENTRY></ENTRY></ROW>
<ROW><ENTRY>postgres</ENTRY><ENTRY>database</ENTRY><ENTRY>Postgres database</ENTRY></ROW>
<ROW><ENTRY>mysql</ENTRY><ENTRY>database</ENTRY><ENTRY>MySQL database</ENTRY></ROW>
<ROW><ENTRY>nobody</ENTRY><ENTRY>nobody</ENTRY><ENTRY></ENTRY></ROW>
</TBODY>
</TGROUP>
</TABLE>
<PARA>
The differences in numeric values of the uids and gids between systems on a 
network can be reconciled via NIS, rdist(1), rsync(1), or ugidd(8).  
Only a minimum working set of "user names" and their corresponding 
"user groups" are required.
Applications cannot assume non system user or group names will be defined.
</PARA>
<PARA>
Applications cannot assume any policy for the default umask or the default
directory permissions a user may have. Applications should enforce user
only file permissions on private files such as mailboxes.  The location of
the users home directory is also not defined by policy other than the
recommendations of the FHS and must be obtained by the *pwnam(3) calls.
</PARA>
</SECT1>
<SECT1 ID="uidrange">
<TITLE>UID Ranges</TITLE>
<PARA>
The system UIDs from 0 to 99 should be statically allocated by the system.
These static assignments should be defined by a common registry.
</PARA>
<PARA>
The system UIDs form 100 to 499 should be reserved for dynamically
allocation by system administrators and post install scripts using useradd(1).
</PARA>
</SECT1>

</CHAPTER>
</PART>
