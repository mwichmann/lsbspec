<PART ID="tocusersgroups">
<TITLE>Users & Groups</TITLE>

<CHAPTER ID="usersgroups">
<TITLE>Users & Groups</TITLE>
<SECT1 ID="usergrpdatabase">
<TITLE>User and Group Database</TITLE>
<PARA>
The format of the User and Group databases is not specified. Programs may only
read these databases using the provided API. Changes to these databases should
be made using the provided commands.
</PARA>
</SECT1>

<SECT1 ID="usernames">
<TITLE>User & Group Names</TITLE>
<PARA>
<xref linkend="tbl-requiredusers"> describes required mnemonic user and group names.   This 
specification makes no attempt to numerically assign user or group identity numbers,
with the exception that both the User ID and Group ID for the user <literal>root</literal>
shall be equal to 0.
</PARA>
<TABLE ID="tbl-requiredusers">
<TITLE>Required User & Group Names</TITLE>
<TGROUP COLS=3>
<THEAD>
<ROW><ENTRY>User</ENTRY><ENTRY>Group</ENTRY><ENTRY>Comments</ENTRY></ROW>
</THEAD>
<TBODY>
<ROW><ENTRY>root</ENTRY><ENTRY>root</ENTRY><ENTRY>Administrative user
with all appropriate privileges</ENTRY>
</ROW>
<ROW><ENTRY>bin</ENTRY><ENTRY>bin</ENTRY><ENTRY>Legacy User ID/Group ID<FOOTNOTE>
<PARA>
The <literal>bin</literal> User ID/Group ID is included for compatibility with legacy applications.
New applications should no longer use the <literal>bin</literal> User ID/Group ID.
</PARA>
</FOOTNOTE>
</ENTRY></ROW>
<ROW><ENTRY>daemon</ENTRY><ENTRY>daemon</ENTRY><ENTRY>Legacy User ID/Group ID<FOOTNOTE>
<PARA>
The <literal>daemon</literal> User ID/Group ID was used as an unprivileged User ID/Group ID for daemons to
execute under in order to limit their access to the system.  Generally
daemons should now run under individual User ID/Group IDs in order to further
partition daemons from one another.
</PARA>
</FOOTNOTE>
</ENTRY>
</ROW>
</TBODY>
</TGROUP>
</TABLE>
<PARA>
</PARA>
<PARA>
<xref linkend="tbl-optusers"> is a table of optional mnemonic user and group names.   This 
specification makes no attempt to numerically assign uid or gid numbers.
If the username exists on a system, then they should be in the suggested
corresponding group.
These user and group names are for use by distributions, not by applications.
</PARA>
<TABLE ID="tbl-optusers">
<TITLE>Optional User & Group Names</TITLE>
<TGROUP COLS=3>
<THEAD>
<ROW><ENTRY>User</ENTRY><ENTRY>Group</ENTRY><ENTRY>Comments</ENTRY></ROW>
</THEAD>
<TBODY>
<ROW><ENTRY>adm</ENTRY><ENTRY>adm</ENTRY><ENTRY>Administrative special privileges</ENTRY></ROW>
<ROW><ENTRY>lp</ENTRY><ENTRY>lp</ENTRY><ENTRY>Printer special privileges</ENTRY></ROW>
<ROW><ENTRY>sync</ENTRY><ENTRY>sync</ENTRY><ENTRY>Login to sync the system</ENTRY></ROW>
<ROW><ENTRY>shutdown</ENTRY><ENTRY>shutdown</ENTRY><ENTRY>Login to shutdown the system</ENTRY></ROW>
<ROW><ENTRY>halt</ENTRY><ENTRY>halt</ENTRY><ENTRY>Login to halt the system</ENTRY></ROW>
<ROW><ENTRY>mail</ENTRY><ENTRY>mail</ENTRY><ENTRY>Mail special privileges</ENTRY></ROW>
<ROW><ENTRY>news</ENTRY><ENTRY>news</ENTRY><ENTRY>News special privileges</ENTRY></ROW>
<ROW><ENTRY>uucp</ENTRY><ENTRY>uucp</ENTRY><ENTRY>UUCP special privileges</ENTRY></ROW>
<ROW><ENTRY>operator</ENTRY><ENTRY>root</ENTRY><ENTRY>Operator special privileges</ENTRY></ROW>
<ROW><ENTRY>man</ENTRY><ENTRY>man</ENTRY><ENTRY>Man special privileges</ENTRY></ROW>
<ROW><ENTRY>nobody</ENTRY><ENTRY>nobody</ENTRY><ENTRY>Used by NFS</ENTRY></ROW>
</TBODY>
</TGROUP>
</TABLE>
<PARA>
<!-- NIS ISN'T SPECIFIED BY THE LSB!
The differences in numeric values of the Uer IDs and Group IDs between systems on a 
network can be reconciled via NIS, rdist(1), rsync(1), or ugidd(8).  -->
Only a minimum working set of "user names" and their corresponding 
"user groups" are required.
Applications cannot assume non system user or group names will be defined.
</PARA>
<PARA>
Applications cannot assume any policy for the default file creation mask 
(<command>umask</command>) or the default
directory permissions a user may have. Applications should enforce user
only file permissions on private files such as mailboxes.  The location of
the users home directory is also not defined by policy other than the
recommendations of <xref linkend="std.fhs"> and should be obtained by 
the <simplelist type=inline>
<member><function>getpwnam</function></member>
<member><function>getpwnam_r</function></member>
<member><function>getpwent</function></member>
<member><function>getpwuid</function></member>
<member>and <function>getpwuid_r</function></member>
</simplelist> functions.
</PARA>
</SECT1>
<SECT1 ID="uidrange">
<TITLE>User ID Ranges</TITLE>
<PARA>
The system User IDs from 0 to 99 should be statically allocated by the system,
and shall not be created by applications.
</PARA>
<PARA>
The system User IDs from 100 to 499 should be reserved for dynamic
allocation by system administrators and post install scripts using <command>useradd</command>.
</PARA>
</SECT1>

<SECT1 ID="usergrprat">
<TITLE>Rationale</TITLE>
<PARA>
The purpose of specifying optional users and groups is to reduce the
potential for name conflicts between applications and distributions.
</PARA>
</SECT1>

</CHAPTER>
</PART>
