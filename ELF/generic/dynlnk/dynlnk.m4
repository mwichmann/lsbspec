<PART ID="tocdynlnk">
<TITLE>Dynamic Linking</TITLE>

<CHAPTER ID=dynlnk>
<TITLE>Program Loading and Dynamic Linking</TITLE>

<PARA>
LSB-conforming implementations shall support the object file information and
system actions that create running programs as specified in the
<XREF LINKEND="std.gABI41">
and
<XREF LINKEND="std.ABIUpdate">
and as supplemented by this document and an architecture-specific LSB specification.
</PARA>

<PARA>
Any shared object that is loaded shall contain sufficient DT_NEEDED records to
satisfy the symbols on the shared library.
</PARA>
</CHAPTER>

<CHAPTER ID=progheader>
<TITLE>Program Header</TITLE>

<PARA>
In addition to the Segment Types defined in the
<XREF LINKEND="std.gABI41">
and
<XREF LINKEND="std.ABIUpdate">
the following Segment Types shall also be supported.
</PARA>

<TABLE>
<TITLE>Linux Segment Types</TITLE>
<TGROUP COLS=2>
<THEAD>
<ROW>
<ENTRY ALIGN=center>Name</ENTRY><ENTRY ALIGN=center>Value</ENTRY></ROW>
</THEAD>
<TBODY>
<ROW><ENTRY>PT_GNU_EH_FRAME</ENTRY><ENTRY>0x6474e550</ENTRY></ROW>
<ROW><ENTRY>PT_GNU_STACK</ENTRY><ENTRY>0x6474e551</ENTRY></ROW>
</TBODY>
</TGROUP>
</TABLE>


<VARIABLELIST>
<VARLISTENTRY>
<TERM>PT_GNU_EH_FRAME</TERM>
<LISTITEM>
<PARA>
The array element specifies the location and size of the exception handling
information as defined by the .eh_frame_hdr section.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM>PT_GNU_STACK</TERM>
<LISTITEM>
<PARA>
The p_flags member specifies the permissions on the segment containing the stack
and is used to indicate wether the stack should be executable. The absense of
this header indicates indicates that the stack will be executable.
</PARA>
</LISTITEM>
</VARLISTENTRY>
</VARIABLELIST>

</CHAPTER>

<CHAPTER ID=DynamicSection>
<TITLE>Dynamic Entries</TITLE>
<PARA>
A dynamic entry's <COMPUTEROUTPUT>d_tag member</COMPUTEROUTPUT> control
the interpretation of <COMPUTEROUTPUT>d_un</COMPUTEROUTPUT>.
</PARA>
<SECT1 ID=dynsectent>
<TITLE>Dynamic Entries</TITLE>
<PARA>
</PARA>
<SECT2>
<TITLE>ELF Dynamic Entries</TITLE>
<PARA>
The following dynamic entries are defined in the 
<XREF LINKEND="std.gABI41">
and
<XREF LINKEND="std.ABIUpdate">.
include(dyntag.sgml)
</PARA>
</SECT2>
<SECT2>
<TITLE>Additional Dynamic Entries</TITLE>
<PARA>
The following dynamic entries are defined here.
include(linuxtag.sgml)
</PARA>
</SECT2>
</SECT1>
</CHAPTER>

<CHAPTER ID=ProgramInterpreter>
<TITLE>
Program Interpreter
</TITLE>
<PARA>
</PARA>
<SECT1 ID=proginterp>
<TITLE>
</TITLE>
<PARA>
The Program Interpreter is specified in the appropriate
architecture-specific LSB specification.
</PARA>
</SECT1>
</CHAPTER>

</PART>
