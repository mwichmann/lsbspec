<PART ID="toccommand">
<TITLE>Commands and Utilities</TITLE>

<CHAPTER ID=command>
<TITLE>Commands and Utilities</TITLE>
<SECT1 ID=cmdutil>
<TITLE>Commands and Utilities</TITLE>

<para>
If any operand (except one which follows --) starts with a
hyphen the behavior is unspecified.

<footnote><para>Thus, applications should place options before
operands, or use --, as needed.  This text is needed because GNU
option parsing differs from POSIX.  For example, <command>ls
. -a</command> in GNU ls means to list the current directory, showing
all files (that is, "." is an operand and -a is an option).  In POSIX,
"." and -a are both operands, and the command means to list the
current directory, and also the file named <filename>-a</filename>.
Suggesting that applications rely on the setting of the
_POSIXLY_CORRECT environment variable, or try to set it, seems worse
than just asking the applictions to invoke commands in ways which work
with either the POSIX or GNU behaviors.</para></footnote>

</para>
 

<PARA>

The following table lists the Commands and Utilities. Unless otherwise
specified the command or utility is described in the Single UNIX
Specification (SUS).  When an interface is not defined in the Single
UNIX Specification,
then the next prevailing standard is referenced (ie., POSIX, SVID).

</PARA>

include(cmdsutils.sgml)

</SECT1>
include(cmdman.sgml)
</CHAPTER>
</PART>
