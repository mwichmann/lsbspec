<PART ID="tocdynlnk">
<TITLE>Dynamic Linking</TITLE>

<CHAPTER ID=dynlnk>
<TITLE>Program Loading and Dynamic Linking</TITLE>

<PARA>
LSB-conforming implementations shall support the object file information and
system actions that create running programs as specified in the System V
Application Binary Interface, Edition 4.1 and the System V Application Binary
Interface - DRAFT - April 29, 1998 and as supplemented by this document and
an architecture-specific LSB specification.
</PARA>

<PARA>
Any shared object that is loaded must contain sufficient DT_NEEDED records to
satisfy the symbols on the shared library.
</PARA>
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
The following dynamic entries are defined in the System V 
Application Binary Interface, Edition 4.1.
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
