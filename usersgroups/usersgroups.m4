<PART>
<TITLE>Users & Groups</TITLE>

<CHAPTER id=UsersGroups>
<TITLE>Users & Groups</TITLE>
<PARA>
A "user name" is a string that is used to identify a user.  A "login name" is
a user name that is associated with a system login.   A "user id" is a non
negative integer, which can be contained in an object of type
uid_t, that is used to identify a system user.  
When the identify of a user is associated with a process, a user ID value is referred to as a real user ID, or an effective user ID.  [POSIX 1.003.1-1996]
</PARA>
<PARA>
A "group name" is a string that is used to identify a set of users.  
A "group id" is a non negative interger, which can be contained in a object of type gid_t, that is used to identify a group of system users.
Each system user is a member of at least one group.   When the identity of a
group is associated with a process, agroup ID value is referred to as a real group ID, or an effective group ID.  [POSIX 1003.1-1996]
</PARA>

<SECT1>
<TITLE>User Database</TITLE>
<PARA>
The user database, "/etc/passwd", consists of newline separated records, one
per user, conaining six colon (":") separated fields.  each field is described 
in the POSIX.1 header file "pwd.h".
</PARA>
<TABLE>
<TITLE>passwd</TITLE>
<TGROUP COLS=3>
<TBODY>
<ROW><ENTRY>Field</ENTRY><ENTRY>Type</ENTRY><ENTRY>API</ENTRY></ROW>
<ROW><ENTRY>name</ENTRY><ENTRY>char *</ENTRY><ENTRY>pw_name</ENTRY></ROW>
<ROW><ENTRY>password</ENTRY><ENTRY>char *</ENTRY><ENTRY>pw_passwd</ENTRY></ROW>
<ROW><ENTRY>uid</ENTRY><ENTRY>uid_t</ENTRY><ENTRY>pw_uid</ENTRY></ROW>
<ROW><ENTRY>gid</ENTRY><ENTRY>gid_t</ENTRY><ENTRY>pw_gid</ENTRY></ROW>
<ROW><ENTRY>gecos</ENTRY><ENTRY>char *</ENTRY><ENTRY>pw_gecos</ENTRY></ROW>
<ROW><ENTRY>home dir</ENTRY><ENTRY>char *</ENTRY><ENTRY>pw_dir</ENTRY></ROW>
<ROW><ENTRY>shell</ENTRY><ENTRY>char *</ENTRY><ENTRY>pw_shell</ENTRY></ROW>
</TBODY>
</TGROUP>
</TABLE>
<PARA>
The "passwd" user database should only be read and updated form the 
following APIs: getpwent(3), setpwent(3), endpwent(3), getpwnam(3),
getpwuid(3), putpwent(3), and passwd(5).
</PARA>
<PARA>
If the initial user program field is null, the system default is used.  
If the initial working directory field is null, the interpretation of 
that field is implementation defined.
</PARA>
</SECT1>

<SECT1>
<TITLE>Group Database</TITLE>
<PARA>
The group database, "/etc/group", consists of newline separated records, 
one per group, containing two colon (":") separated fields.  Each field is 
described in the POSIX.1 header file "grp.h".
</PARA>
<TABLE>
<TITLE>group</TITLE>
<TGROUP COLS=3>
<TBODY>
<ROW><ENTRY>Field</ENTRY><ENTRY>Type</ENTRY><ENTRY>API</ENTRY></ROW>
<ROW><ENTRY>group</ENTRY><ENTRY>char *</ENTRY><ENTRY>gr_name</ENTRY></ROW>
<ROW><ENTRY>gid</ENTRY><ENTRY>gid_t</ENTRY><ENTRY>gr_gid</ENTRY></ROW>
<ROW><ENTRY>member</ENTRY><ENTRY>char **</ENTRY><ENTRY>gr_mem</ENTRY></ROW>
</TBODY>
</TGROUP>
</TABLE>
<PARA>
The "group" user database should only be red from the following APIs:
getgrent(3), setgrent(3), sendgrent(3).  
</PARA>
<NOTE>
<PARA>
According to JFH, author of shadow-utils, there are no group write APIs.
</PARA>
</NOTE>
</SECT1>

<SECT1>
<TITLE>Commands</TITLE>
<PARA></PARA>
</SECT1>

<SECT1>
<TITLE>System Files</TITLE>
<PARA>
</PARA>
</SECT1>

<SECT1>
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

<SECT1>
<TITLE>User & Group Names</TITLE>
<PARA>
</PARA>
</SECT1>

</CHAPTER>
</PART>
