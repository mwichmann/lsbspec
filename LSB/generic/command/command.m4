<PART ID="toccommand">
<TITLE>Commands and Utilities</TITLE>

<CHAPTER ID=command>
<TITLE>Commands and Utilities</TITLE>
<SECT1 ID=cmdutil>
<TITLE>Commands and Utilities</TITLE>
<PARA>

<XREF LINKEND="tbl-cmds"> lists the Commands and Utilities required
to be present on a conforming system. These commands and utilities shall
behave as described in the relevant underlying specification, with the
following exceptions:
<ORDEREDLIST>
<LISTITEM><PARA>
If any operand (except one which follows <option>--</option>) starts with a
hyphen, the behavior is unspecified.
<NOTE><TITLE>Rationale (Informative)</TITLE>
<para>Applications should place options before operands, or use
<option>--</option>, as needed.  This text is needed because GNU option parsing
differs from POSIX.  For example, <command>ls . -a</command> in GNU
<command>ls</command> means to list the current directory, showing all
files (that is, <option>"."</option> is an operand and <option>-a</option> is an
option).  In POSIX, <option>"."</option> and <option>-a</option> are both operands,
and the command means to list the current directory, and also the file
named <filename>-a</filename>.  Suggesting that applications rely on the
setting of the <constant>POSIXLY_CORRECT</constant> environment variable,
or try to set it, seems worse than just asking the applictions to invoke
commands in ways which work with either the POSIX or GNU behaviors.</para>

</NOTE>
</PARA></LISTITEM>
</ORDEREDLIST>
</PARA>

include(cmdsutils.sgml)

</SECT1>
include(cmdman.sgml)
</CHAPTER>
</PART>
