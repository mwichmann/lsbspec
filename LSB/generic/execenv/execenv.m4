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
The system must grant to the application read and execute              
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
permission outside /tmp, /var/tmp, its home directory and
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
If the installation of an application requires 
the execution of programs with superuser privileges, 
such programs should also be supplied in a 
human-readable form. 
</PARA>

<PARA>
Without this, the local system administrator 
would have to blindly trust a piece of software,
particularly its security.
</PARA>
  
</SECT2>
</SECT1>

</CHAPTER>

<CHAPTER ID="execenv-addntl-bhvr">
<title>Additional Behaviors</title>

<para>This section specifies behaviors in which there is optional
behavior in one of the standards on which the LSB relies, and where
the LSB requires a specific behavior.
<footnote><para>
The intention is that none of these choices will create problems in
practice (for example, for LSB implementations on top of non-Linux
kernels).  Future versions of the LSB may relax these requirements if
needed.</para></footnote>
</para>

<para>The fcntl() function shall detect EDEADLK, as described as
optional behavior in the SUS.</para>

<para>The fcntl() function shall treat the "cmd" value -1 as
invalid.</para>

<para>The "whence" value -1 shall be an invalid value for the
lseek(), fseek() and fcntl() functions.</para>

<para>The value "-5" shall be an invalid signal number.</para>

<para>The opendir() function shall detect EMFILE and ENFILE, as
described as optional behavior in the SUS.</para>

<para>The readdir() and closedir() functions shall detect EBADF, as
described as optional behavior in the SUS.</para>

<para>If the sigaddset() or sigdelset() functions are passed an
invalid signal number, they shall return with EINVAL.  Implementations
are only required to enforce this requirement for signal numbers which
are specified to be invalid by this specification (such as the -5
mentioned above).</para>

<para>The START and STOP termios characters shall be changeable, as
described as optional behavior in the "General Terminal Interface"
section of the SUS.</para>

<para>The mode value "-1" to the access() function shall be treated as
invalid.</para>

<para>A value of -1 shall be an invalid "_PC_..." value for
pathconf().</para>

<para>A value of -1 shall be an invalid "_SC..." value for
sysconf().</para>

<para>The link() function shall require access to the existing file in
order to succeed, as described as optional behavior in the SUS.</para>

<para id="exec-link-unlink"
XRefLabel="Additional behaviors: unlink/link on directory"
>Calling unlink() on a directory shall fail.
Calling link() specifying a directory as the first
argument shall fail.  See also <xref linkend="baselib-unlink-3" />.</para>

<para>The link() function shall not work across file systems, and
shall return with EXDEV as described as optional behavior in the
SUS.</para>

<para>The nl_item value "-1" shall be invalid for nl_langinfo.</para>

<para>The value -1 shall be an invalid "_CS_..." value for confstr().</para>

<para>The value "z" shall be an invalid mode argument to popen().</para>

<para>
<footnote>
<para>
On a Linux kernel, removing or renaming a directory will give EBUSY
only when the directory is in use by a system process.  However, the
LSB does not specify this behavior on the grounds that it is of no use
to applications and may be difficult to implement on some kernels.
</para>

<para>
Linux allows one to call rename() on a directory without
having write access, but the LSB does not require this.</para>
</footnote>
</para>

</CHAPTER>

<CHAPTER id=localization>
<TITLE>Localization</TITLE>

<PARA>
Applications may either install a message catalog in the MO format as
specified by the info page in version 0.10.40 of the gettext source package,
or the application may execute the msgfmt command during it's installation
to compile the message catalog. In either case, the resulting output must be
located in the package's private area under <FILENAME>/opt</FILENAME>, and the
application may use <FUNCTION>bindtextdomain()</FUNCTION> to specify this
location.
</PARA>

</CHAPTER>

</PART>
