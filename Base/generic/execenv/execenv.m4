<PART id="tocexecenv">
<TITLE>Execution Environment</TITLE>

m4_include(fhs.sgml)

<CHAPTER id="execstuff">
<TITLE>Additional Recommendations</TITLE>
<!--
<SECT1 id="permissions-must">
<TITLE>Minimal granted Directory and File permissions</TITLE>

<PARA>
In this Chapter "System" means an "LSB conforming implementation" and
"application" means an "LSB conforming (third party vendor) application".
</PARA>

<PARA>
The system shall grant to the application read and execute              
permissions on files needed to use all system interfaces (ABIs)                 
required by the this specification.
</PARA>

</SECT1>
-->

<SECT1 id="permissions-should">
<TITLE>Recommendations for applications on ownership and permissions</TITLE>

<SECT2 id="permissions-dirwrite">
<TITLE>Directory Write Permissions</TITLE>

<PARA>
The application should not depend on having directory write 
permission in any directory except 
<simplelist type=inline>
<member><filename>/tmp</filename></member> 
<member><filename>/var/tmp</filename></member>
<member>and the invoking user's home directory.</member>
</simplelist>
</PARA>
<PARA>
In addition, the application may store variable data in 
<filename>/var/opt/<replaceable>package</replaceable></filename>,
(where <replaceable>package</replaceable> is the name of the 
application package), if such a directory is created with appropriate permissions during the package installation.
</PARA>

<PARA>
For these directories the application should be able to work 
with directory write permissions restricted by the 
<CONSTANT>S_ISVTXT</CONSTANT> bit, implementing the restricted
deletion mode as described for the XSI option for <xref linkend="std.SUSv4">.
</PARA>
 
</SECT2>

 
<SECT2 id="permissions-filewrite">
<TITLE>File Write Permissions</TITLE>

<PARA>
The application should not depend on file write permission to
any file that it does not itself create.
</PARA>
</SECT2>
         
<SECT2 id="permissions-fileread">
<TITLE>File Read and execute Permissions</TITLE>
 
<PARA>
The application should not depend on having read permission to
every file and directory.
</PARA>
 
</SECT2>

<SECT2 id="permissions-sbits">
<TITLE>SUID and SGID Permissions </TITLE>
 
<PARA>
The application should not depend on the set user ID or set group ID
(the <CONSTANT>S_ISUID</CONSTANT> or <CONSTANT>S_ISGID</CONSTANT>
permission bits)
permissions of a 
file not packaged with the application. Instead, the distribution is 
responsible for assuming that all system commands have the required 
permissions and work correctly.
</PARA>

<NOTE><TITLE>Rationale</TITLE>
<PARA>
In order to implement common security policies it is strongly advisable
for applications to use the minimum set of security attributes necessary for
correct operation. Applications that require substantial appropriate privilege
are likely to cause problems with such security policies.
</PARA>
</NOTE>
</SECT2>
 
<SECT2 id="priviledged-users">
<TITLE>Privileged users</TITLE>

<PARA>
In general, applications should not depend on running as a privileged user.
This specification uses the term "appropriate privilege" throughout to identify
operations that cannot be achieved without some special granting of additional
privilege.
</PARA>

<PARA>
Applications that have a reason to run with appropriate privilege
should outline this reason clearly in their documentation.
Users of the application should be informed, that "this application 
demands security privileges, which could interfere with system security".
</PARA>

<PARA>
The application should not contain binary-only software that 
requires being run with appropriate privilege, as this makes security auditing 
harder or even impossible. 
</PARA>

</SECT2>

<SECT2 id="changing-permissions">
<TITLE>Changing permissions</TITLE>

<PARA>
The application shall not change permissions of files and 
directories that do not belong to its own package. 
Should an application require that certain files and directories
not directly belonging to the package have a particular ownership,
the application shall document this requirement, and may fail during
installation if the permissions on these files is inappropriate.
</PARA>

</SECT2>

<SECT2 id="permission-media">
<TITLE>Removable Media (Cdrom, Floppy, etc.)</TITLE>

<para>
Applications that expect to be runnable from removable
media should not depend on logging in as a privileged user,
and should be prepared to deal with a restrictive
environment.  Examples of such restrictions could be
default mount options that disable set-user/group-ID
attributes, disabling block or character-special files on
the medium, or remapping the user and group IDs of files away
from any privileged value.
<note><title>Rationale</title>
<para>
System vendors and local system administrators
want to run applications from removable media, but want the
possibility to control what the application can do.
</para>
</note>
</para>

</SECT2>
 
<SECT2 id="permission-installers">
<TITLE>Installable applications</TITLE>

<PARA>
Where the installation of an application needs additional privileges, it must
clearly document all files and system databases that are modified outside of
those in 
<FILENAME>/opt/<REPLACEABLE>pkg-name</REPLACEABLE></FILENAME>,
<FILENAME>/etc/opt/<REPLACEABLE>pkg-name</REPLACEABLE></FILENAME>,
and <FILENAME>/var/opt/<REPLACEABLE>pkg-name</REPLACEABLE></FILENAME>,
other than those that may be
updated by system logging or auditing activities.


</PARA>

<PARA>
Without this, the local system administrator 
would have to blindly trust a piece of software,
particularly with respect to its security.
</PARA>
  
</SECT2>
</SECT1>

</CHAPTER>

<CHAPTER ID="execenv-addntl-bhvr">
<title>Additional Behaviors</title>
<SECT1>
<title>Mandatory Optional Behaviors</title>
<para>This section specifies behaviors in which there is optional
behavior in one of the standards on which this specification relies,
and where this specification requires a specific behavior.
<note><para>
This specification does not require the kernel to be Linux; the set of mandated 
options reflects current existing practice, but may be modified in
future releases.
</para></note>
</para>

<para>
LSB conforming implementations shall support the following options defined
within the <citetitle pubwork="book"><xref linkend="std.SUSv4"></citetitle>:
<SIMPLELIST COLUMNS=1>
<MEMBER>_POSIX_FSYNC</MEMBER>
<MEMBER>_POSIX_MAPPED_FILES</MEMBER>
<MEMBER>_POSIX_MEMLOCK</MEMBER>
<MEMBER>_POSIX_MEMLOCK_RANGE</MEMBER>
<MEMBER>_POSIX_MEMORY_PROTECTION</MEMBER>
<MEMBER>_POSIX_PRIORITY_SCHEDULING</MEMBER>
<MEMBER>_POSIX_REALTIME_SIGNALS</MEMBER>
<MEMBER>_POSIX_THREAD_ATTR_STACKADDR</MEMBER>
<MEMBER>_POSIX_THREAD_ATTR_STACKSIZE</MEMBER>
<MEMBER>_POSIX_THREAD_PROCESS_SHARED</MEMBER>
<MEMBER>_POSIX_THREAD_SAFE_FUNCTIONS</MEMBER>
<MEMBER>_POSIX_THREADS</MEMBER>
<!-- not sure about the following, so leaving them out for now ...
<MEMBER>_XOPEN_UNIX</MEMBER>
<MEMBER>_POSIX_ASYNCHRONOUS_IO</MEMBER>
<MEMBER>_POSIX_SEMAPHORES</MEMBER>
<MEMBER>_POSIX_SHARED_MEMORY_OBJECTS</MEMBER>
<MEMBER>_POSIX_TIMERS</MEMBER>
-->
</SIMPLELIST>
</PARA>

<para>The <FUNCTION>opendir</FUNCTION>
function shall consume a file descriptor in the same
fashion as <FUNCTION>open</FUNCTION>, and therefore may fail with 
<CONSTANT>EMFILE</CONSTANT> or <CONSTANT>ENFILE</CONSTANT>.
</para>

<para>The <CONSTANT>START</CONSTANT> and 
<CONSTANT>STOP</CONSTANT> <structname>termios</structname>
characters shall be changeable, as
described as optional behavior in the "General Terminal Interface"
section of the 
<citetitle pubwork="book"><xref linkend="std.SUSv4"></citetitle>.
</para>

<para>The <function>access</function> function
function shall fail with <VARNAME>errno</VARNAME>
set to <CONSTANT>EINVAL</CONSTANT> if the 
<parameter>amode</parameter> argument contains bits other than 
those set by the bitwise inclusive OR of 
<CONSTANT>R_OK</CONSTANT>, 
<CONSTANT>W_OK</CONSTANT>, 
<CONSTANT>X_OK</CONSTANT> and 
<CONSTANT>F_OK</CONSTANT>.
</para>

<para>The <FUNCTION>link</FUNCTION> function shall require access
to the existing file in
order to succeed, as described as optional behavior in the 
<citetitle pubwork="book"><xref linkend="std.SUSv4"></citetitle>.
</para>

<para id="exec-link-unlink"
XRefLabel="Section 18.1, Additional behaviors: unlink/link on directory"
>
Calling <FUNCTION>unlink</FUNCTION> on a directory shall fail.
Calling <FUNCTION>link</FUNCTION> specifying a directory as the first
argument shall fail.  See also <xref linkend="baselib-unlink-3">.
<note>
<para>
Linux allows <FUNCTION>rename</FUNCTION> on a directory without
having write access, but this specification does not require this behavior.</para>
</note>
</para>
<SECT2 id="addl-behaviors-test">
<TITLE>Special Requirements</TITLE>
<PARA>
LSB conforming systems shall enforce certain special additional restrictions
above and beyond those required by <xref linkend="std.SUSv4">.
<NOTE>
<PARA>These additional restrictions are required in order to support the testing
and certification programs associated with the LSB. In each case, these are values
that defined macros must not have; conforming applications that use these values
shall trigger a failure in the interface that is otherwise described as a "may fail".
</PARA>
</NOTE>
</PARA>
<para>The <FUNCTION>fcntl</FUNCTION> function shall treat the "cmd" value -1 as
invalid.</para>

<para>The <parameter>whence</parameter> value <constant>-1</constant>
shall be an invalid value for the
<function>lseek</function>, <function>fseek</function> and 
<function>fcntl</function> functions.</para>

<para>The value <constant>-5</constant> shall be an invalid signal number.</para>

<para>If the <function>sigaddset</function> or 
<function>sigdelset</function> functions are passed an
invalid signal number, they shall return with <ErrorName>EINVAL</ErrorName>.
Implementations
are only required to enforce this requirement for signal numbers which
are specified to be invalid by this specification (such as the <constant>-5</constant>
mentioned above).</para>
<para>The mode value <constant>-1</constant> to the <function>access</function>
function shall be treated as
invalid.</para>

<para>A value of <constant>-1</constant> shall be an invalid "_PC_..." value for
<function>pathconf</function>.</para>

<para>A value of <constant>-1</constant> shall be an invalid "_SC..." value for
<function>sysconf</function>.</para>

<para>The <parameter>nl_item</parameter> value <constant>-1</constant>
shall be invalid for <function>nl_langinfo</function>.</para>

<para>The value <constant>-1</constant> shall be an invalid "_CS_..." value for 
<function>confstr</function>.</para>

<para>The value <constant>"a"</constant> shall be an invalid <parameter>mode</parameter>
argument to <function>popen</function>.</para>

<para>The <function>fcntl</function> function shall fail and set <varname>errno</varname> to
<errorcode>EDEADLK</errorcode> if the
<parameter>cmd</parameter> argument is <constant>F_SETLKW</constant>,
and the lock is blocked by a lock from another process already blocked by the current process.
</para>

<para>The <function>opendir</function> function shall consume a file descriptor;
the <function>readdir</function> function shall fail and set <varname>errno</varname>
to <errorcode>EBADF</errorcode> if the underlying file descriptor is closed.
</para>

<para>The <function>link</function> function shall not work across file systems, and
shall fail and set <varname>errno</varname> to <errorcode>EXDEV</errorcode>
as described as optional behavior in <xref linkend="std.SUSv4">.
</para>



</SECT2>
</SECT1>
<SECT1 id="exec-opt-mandatory">
<title>Optional Mandatory Behaviors</title>
<para>This section specifies behaviors that are mandatory
in one of the standards on which this specification relies, but which
are optional in this specification.
</para>
<para>
<xref linkend="std.SUSv4"> describes the behavior of the file access
time, available as the <structfield>st_atime</structfield> field of
the <structname>stat</structname> and <structname>stat64</structname>
structures.  An LSB conforming implementation need not update this
information every time a file is accessed.
</para>
<note>
<para>
A subsequent edition of the POSIX standard no longer mandates updating
of <structfield>st_atime</structfield> but the older edition is still the
guiding standard for this specification, thus this exception is needed.
</para>
</note>
</SECT1>
<SECT1 id="executable-scripts">
<title>Executable Scripts</title>
<para>
An executable script is an executable file of which the first two
characters are <literal>#!</literal> as defined in the portable character
set. In <xref linkend="std.SUSv4">, this construct is undefined, but
reserved for implementations which wish to provide this functionality.
LSB conforming implementations shall support executable scripts.
</para>

<para>
A successful call to a function of the exec family with an executable
script as the first parameter shall result in a new process, where the
process image started is that of the interpreter. The path name of the
interpreter follows the <literal>#!</literal> characters.
</para>

<para>
If the executable script has a first line
<informalexample>
<programlisting>
#! interpreter [arg]
</programlisting>
</informalexample>
then <parameter>interpreter</parameter> shall be called with an
argument array consisting of an unspecified zeroth argument, followed
by <parameter>arg</parameter> (if present), followed by a path name for
the script, followed by the arguments following the zeroth argument in
the exec call of the script.
</para>

<para>
The interpreter shall not perform any operations on the first line of
an executable script.
</para>

<para>
The first line of the executable script shall meet all of the following
criteria otherwise the results are unspecified:
</para>

<para>
<orderedlist>
<listitem><para>
Is of one of the forms:
<informalexample>
<programlisting>
#!interpreter
#! interpreter
#!interpreter arg
#! interpreter arg
</programlisting>
</informalexample>
</para></listitem>

<listitem><para>
The <parameter>interpreter</parameter> argument is an absolute pathname
of an executable file other than an executable script.
</para></listitem>

<listitem><para>
Neither the <parameter>interpreter</parameter> argument nor the
<parameter>arg</parameter> argument, if present, contain any quoting
characters.
</para></listitem>

<listitem><para>
Neither the <parameter>interpreter</parameter> argument nor the
<parameter>arg</parameter> argument, if present, contain any whitespace
characters.
</para></listitem>

<listitem><para>
The length of the entire line is no longer than 80 bytes.
</para></listitem>
</orderedlist>
</para>

<para>
If the interpreter is required by this specification to be in a
specfic named directory, a conforming application must use that
path for <parameter>interpreter</parameter>, as implementations are
not prohibited from having other, possibly non-conforming, versions
of the same interpreter installed on the system.  If the interpreter
is a required command in this specification, but does not have a
required path, the application should take special measures to
insure the appropriate version is selected.  If the interpreter is
not a required command in this specification, the application must
make appropriate provisions that the interpreter is available at
the appropriate path.
</para>

<note>
<para>
In case the path is not specified, it is recommended that an installation
script for executable scripts use the standard <EnVar>PATH</EnVar>
returned by a call to the <command>getconf</command> command with the
argument <parameter>PATH</parameter>, combined with the 
<command>command</command> command to determine the location of a
standard command.
</para>
<para>
For example to determine the location of the standard <command>awk</command>
command:
<informalexample>
<programlisting>
PATH=&grave;getconf PATH&grave; command -v awk
</programlisting>
</informalexample>
</para>
<para>
The installation script should ensure that the returned
pathname is an absolute pathname prior to use, since a shell builtin 
might be returned for some utilities.
</para>
<para>
Use of the common form <literal>#!/usr/bin/env interpreter</literal>
is not recommended as the <envar>PATH</envar> will be unknown at execution
time and an alternative version of <parameter>interpreter</parameter>
might be selected.
</para>
</note>
</SECT1>
</CHAPTER>

<CHAPTER id=localization>
<TITLE>Localization</TITLE>
<SECTION>
<TITLE>Introduction</TITLE>
<PARA>
In order to install a message catalog, the installation procedure 
shall supply the message catalog in a format readable by the
<COMMAND>msgfmt</COMMAND> command, which shall be invoked to compile
the message catalog into an appropriate binary format on the target system.
<NOTE>
<TITLE>Rationale</TITLE>
<PARA>The original intent was to allow an application to contain the binary
GNU MO format files. However, the format of these files is not
officially stable, hence it is necessary to compile these catalogs
on the target system. These binary catalogs
may differ from architecture to architecture
as well.
</PARA>
</NOTE>
The resulting binary message catalog shall be
located in the package's private area under <FILENAME>/opt</FILENAME>, and the
application may use <FUNCTION>bindtextdomain</FUNCTION> to specify this
location.
</PARA>

<para>
Implementations shall support the POSIX and C locales as specified in
<xref linkend="std.SUSv4">. Other locales may be supported.
</para><para>
Implementations may define additional locale categories not defined by that standard.
<NOTE><PARA>
Implementations choosing additional locale categories should be aware
of <xref linkend="std.TR14652"> and are advised not to choose names that conflict with that
specification. If implementations provide locale categories whose names
are part of the FDCC set of <xref linkend="std.TR14652">, they should behave as defined by
that specification.
</PARA></NOTE>
</para>
</section>
<section id="localization-regex" XRefLabel="Regular Expressions">
<title>Regular Expressions</title>
<para>
Utilities that process regular expressions shall support Basic
Regular Expressions and Extended Regular Expressions as specified in 
<xref linkend="std.SUSv4">, with the following exceptions:</para>

<para>Range expression (such as <literal>[a-z]</literal>) can be based on code point
order instead of collating element order.</para>

<para>Equivalence class expression (such as <literal>[=a=]</literal>) and multi-character
collating element expression (such as <literal>[.ch.]</literal>) are optional.</para>

<para>Handling of a multi-character collating element is
optional.</para>

<para>This affects at least the following utilities: 
<itemizedlist>
<listitem><para>
<command>awk</command> (see <xref linkend="awk">)
</para></listitem>
<listitem><para>
<command>grep</command> (see <xref linkend="grep">)
(including <command>egrep </command>, see <xref linkend="egrep">)
</para></listitem>
<listitem><para>
<command>sed</command> (see <xref linkend="sed">)
</para></listitem>
</itemizedlist>
It also affects the behavior of interfaces in the base libraries, including
at least 
<itemizedlist>
<listitem><para>
<function>regexec</function> (see <xref linkend="baselib-regexec-2">)
</para></listitem>
</itemizedlist>
</para>

</section>

<section id="localization-glob" XRefLabel="Pattern Matching Notation">
<title>Pattern Matching Notation</title>
<para>
Utilities that perform filename pattern matching (also known as Filename
Globbing) shall do it as specified in 
<xref linkend="std.SUSv4">, Pattern Matching Notation,
with the following exceptions:</para>

<para>Pattern bracket expressions (such as 
<literal>[a-z]</literal>) can be based on code point
order instead of collating element order.</para>

<para>Equivalence class expression (such as <literal>[=a=]</literal>) and multi-character
collating element expression (such as <literal>[.ch.]</literal>) are optional.</para>

<para>Handling of a multi-character collating element is
optional.</para>

<para>This affects at least the following utilities: 
<COMMAND>cpio</COMMAND>
(<xref linkend="cpio">), 
<COMMAND>find</COMMAND> and
<COMMAND>tar</COMMAND> (<xref linkend="tar">).</para>

</section>

</CHAPTER>

</PART>
