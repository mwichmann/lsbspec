<PART ID="tocexecenv">
<TITLE>Execution Environment</TITLE>

include(fhs.sgml)

<CHAPTER id=execstuff>
<TITLE>Additional Recommendations</TITLE>
<SECT1 id=permissions-must>
<TITLE>Minimal granted Directory and File permissions</TITLE>

<PARA>
In this Chapter "System" means an "LSB conforming implementation" and
"application" means an "LSB conforming (third party vendor) application".
</PARA>

<PARA>
The system shall grant to the application read and execute              
permissions needed to use all system interfaces (ABIs)                 
mentioned in the LSB document and included standards.                  
</PARA>

</SECT1>

<SECT1 id=permissions-should>
<TITLE>Recommendations for applications on ownership and permissions</TITLE>

<SECT2 id=permissions-dirwrite>
<TITLE>Directory Write Permissions</TITLE>

<PARA>
The application should not depend on having directory write 
permission outside /tmp, /var/tmp, invoking user's home directory and
/var/opt/<replaceable>package</replaceable>,
(where <replaceable>package</replaceable> is the name of the 
application package). 
</PARA>

<PARA>
The application should not depend on owning these directories.
<!-- What do we mean here?  Can an application create
/var/opt/<package>/<subdir> and own it? -->
</PARA>

<PARA>
For these directories the application should be able to work 
with directory write permissions restricted by the "sticky bit". 
(Which prevents the application from removing files owned by another 
user. This is classically done with /tmp, to prevent accidental
deletion of "foreign" files.)
</PARA>
 
</SECT2>
 
<SECT2 id=permissions-filewrite>
<TITLE>File Write Permissions</TITLE>

<PARA>
The application should not depend on file write permission on
files not owned by the user it runs under with the exception 
of its personal inbox /var/mail/<replaceable>username</replaceable>
</PARA>
</SECT2>
         
<SECT2 id=permissions-fileread>
<TITLE>File Read and execute Permissions</TITLE>
 
<PARA>
The application should not depend on having read permission to
every file and directory.
</PARA>
 
</SECT2>

<SECT2 id=permissions-sbits>
<TITLE>Suid and Sgid Permissions </TITLE>
 
<PARA>
The application should not depend on the suid/sgid permissions of a 
file not packaged with the application. Instead, the distribution is 
responsible for assuming that all system commands have the required 
permissions and work correctly.
</PARA>

<PARA>
Rationale:
Let us make security officers happy. Let's give them the freedom
to take sgid/suid perms away, as long as they do not break 
the system's functionality.
</PARA>
</SECT2>
 
<SECT2 id=priviledged-users>
<TITLE>Privileged users</TITLE>

<PARA>
"Normal" applications should not depend on running as a privileged user.
</PARA>

<PARA>
Special applications that have a reason to run under a privileged user,
should outline these reasons clearly in their documentation, if they
are not obvious as in the case of a backup/restore program.
Users of the application should be informed, that "this application 
demands security privileges, which could interfere with system security".
</PARA>

<PARA>
The application should not contain binary-only software that 
requires being run as root, as this makes security auditing 
harder or even impossible. 
</PARA>

</SECT2>

<SECT2 id=changing-permissions>
<TITLE>Changing permissions</TITLE>

<PARA>
The application should not change permissions of files and 
directories that do not belong to its own package. To do so without
a warning notice in the documentation is regarded as unfriendly act.
</PARA>

</SECT2>

<SECT2 id=permission-media>
<TITLE>Removable Media (Cdrom, Floppy, etc.)</TITLE>

<para>
Applications that expect to be runnable from removable
media should not depend on logging in as a privileged user,
and should be prepared to deal with a restrictive
environment.  Examples of such restrictions could be
default mount options that disable set-user/group-ID
attributes, disabling block or character-special files on
the medium, or remapping the user/group IDs of files away
from 0.
<footnote>
<para>
Rationale: System vendors and local system administrators
want to run applications from removable media, but want the
possibility to control what the application can do.
</para>
</footnote>
</para>

</SECT2>
 
<SECT2 id=permission-installers>
<TITLE>Installable applications</TITLE>

<PARA>
Where the installation of an application needs additional privileges, it must
clearly document all files and system databases that are modified outside of
those in 
<FILENAME>/opt/<REPLACEABLE>pkg-name</REPLACEABLE></FILENAME>
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
behavior in one of the standards on which the LSB relies, and where
the LSB requires a specific behavior.
<footnote><para>
The LSB does not require the kernel to be Linux; the set of mandated 
options reflects current existing practice, but may be modified in
future releases.
</para></footnote>
</para>

<para>
LSB conforming implementations shall support the following options defined
within the <CITETITLE PUBWORK="BOOK"><XREF LINKEND="STD.SUSv3"></CITETITLE>:
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
<MEMBER>_XOPEN_UNIX</MEMBER>
<!-- not sure about the following, so leaving them out for now ...
<MEMBER>_POSIX_ASYNCHRONOUS_IO</MEMBER>
<MEMBER>_POSIX_SEMAPHORES</MEMBER>
<MEMBER>_POSIX_SHARED_MEMORY_OBJECTS</MEMBER>
<MEMBER>_POSIX_TIMERS</MEMBER>
-->
</SIMPLELIST>
</PARA>

<para>The <FUNCTION>opendir()</FUNCTION>
function shall consume a file descriptor in the same
fashion as <FUNCTION>open</FUNCTION>, and therefore may fail with 
<CONSTANT>EMFILE</CONSTANT> or <CONSTANT>ENFILE</CONSTANT>.
</para>

<para>The START and STOP termios characters shall be changeable, as
described as optional behavior in the "General Terminal Interface"
section of the 
<CITETITLE PUBWORK="BOOK"><XREF LINKEND="STD.SUSv3"></CITETITLE>.
</para>

<para>The <function>access()</function> function
function shall fail with <VARNAME>errno</VARNAME>
set to <CONSTANT>EINVAL</CONSTANT> if the 
<parameter>amode</parameter> argument contains bits other than 
those set by the bitwise inclusive OR of 
<CONSTANT>R_OK</CONSTANT>, 
<CONSTANT>W_OK</CONSTANT>, 
<CONSTANT>X_OK</CONSTANT> and 
<CONSTANT>F_OK</CONSTANT>.
</para>

<para>The <FUNCTION>link()</FUNCTION> function shall require access
to the existing file in
order to succeed, as described as optional behavior in the 
<CITETITLE PUBWORK="BOOK"><XREF LINKEND="STD.SUSv3"></CITETITLE>.
</para>

<para id="exec-link-unlink"
XRefLabel="Additional behaviors: unlink/link on directory"
>Calling <FUNCTION>unlink()</FUNCTION> on a directory shall fail.
Calling <FUNCTION>link()</FUNCTION> specifying a directory as the first
argument shall fail.  See also <xref linkend="baselib-unlink-3">.
<footnote>
<para>
Linux allows <FUNCTION>rename()</FUNCTION> on a directory without
having write access, but the LSB does not require this.</para>
</footnote>
</para>
<SECT2 id=addl-behaviors-test>
<TITLE>Special Requirements</TITLE>
<PARA>
LSB conforming systems shall enforce certain special additional restrictions
above and beyond those required by <XREF LINKEND="STD.SUSv3">.
<FOOTNOTE>
<PARA>These additional restrictions are required in order to support the testing
and certification programs associated with the LSB. In each case, these are values
that defined macros must not have; conforming applications that use these values
shall trigger a failure in the interface that is otherwise described as a "may fail".
</PARA>
</FOOTNOTE>
</PARA>
<para>The fcntl() function shall treat the "cmd" value -1 as
invalid.</para>

<para>The "whence" value -1 shall be an invalid value for the
lseek(), fseek() and fcntl() functions.</para>

<para>The value "-5" shall be an invalid signal number.</para>

<para>If the sigaddset() or sigdelset() functions are passed an
invalid signal number, they shall return with EINVAL.  Implementations
are only required to enforce this requirement for signal numbers which
are specified to be invalid by this specification (such as the -5
mentioned above).</para>
<para>The mode value "-1" to the access() function shall be treated as
invalid.</para>

<para>A value of -1 shall be an invalid "_PC_..." value for
pathconf().</para>

<para>A value of -1 shall be an invalid "_SC..." value for
sysconf().</para>

<para>The nl_item value "-1" shall be invalid for nl_langinfo.</para>

<para>The value -1 shall be an invalid "_CS_..." value for confstr().</para>

<para>The value "z" shall be an invalid mode argument to popen().</para>

</SECT2>
</SECT1>
</CHAPTER>

<CHAPTER id=localization>
<TITLE>Localization</TITLE>

<PARA>
Applications may either install a message catalog in the MO format as
specified by the info page in version 0.10.40 of the gettext source package,
or the application may execute the msgfmt command during it's installation
to compile the message catalog. In either case, the resulting output shall be
located in the package's private area under <FILENAME>/opt</FILENAME>, and the
application may use <FUNCTION>bindtextdomain()</FUNCTION> to specify this
location.
</PARA>

<para>
Implementations shall support the POSIX and C locales as specified in
the Single UNIX Specification.
</para>

<section id="localization-regex"
 XRefLabel="Internationalization and Regular Expressions">
<title>Regular Expressions</title>
<para>
Utilities that process regular expressions shall support Basic
Regular Expressions and Extended Regular Expressions as specified in the
Single UNIX Specification, with the following exceptions:</para>

<para>Range expression (such as [a-z]) can be based on code point
order instead of collating element order.</para>

<para>Equivalence class expression (such as [=a=]) and multi-character
collating element expression (such as [.ch.]) are optional.</para>

<para>Handling of a multi-character collating element is
optional.</para>

<para>This affects at least the following utilities: grep (<xref
linkend="grep" />) (including egrep), sed (<xref linkend="sed" />),
and awk (<xref linkend="awk" />).  </para>

</section>

<section id="localization-glob"
 XRefLabel="Internationalization and Pattern Matching Notation">
<title>Pattern Matching Notation</title>
<para>
Utilities that perform filename pattern matching (also known as Filename
Globbing) shall do it as specified in 
<XREF LINKEND=STD.SUSv3>, Pattern Matching Notation,
with the following exceptions:</para>

<para>Pattern bracket expressions (such as 
<replaceable>[a-z]</replaceable>) can be based on code point
order instead of collating element order.</para>

<para>Equivalence class expression (such as <replaceable>[=a=]</replaceable>) and multi-character
collating element expression (such as <replaceable>[.ch.]</replaceable>) are optional.</para>

<para>Handling of a multi-character collating element is
optional.</para>

<para>This affects at least the following utilities: 
<COMMAND>cpio</COMMAND>
(<xref linkend="cpio" >), 
<COMMAND>find</COMMAND> (<xref linkend="find" >),
<COMMAND>ls</COMMAND> (<xref linkend="ls" >) and 
<COMMAND>tar</COMMAND> (<xref linkend="tar" >).</para>

</section>

</CHAPTER>

</PART>
