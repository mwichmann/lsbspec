<PART ID="tocdynlnk">
<TITLE>Dynamic Linking</TITLE>

<CHAPTER ID=dynlnk>
<TITLE>Program Loading and Dynamic Linking</TITLE>

<PARA>
LSB-conforming implementations shall support the object file information and
system actions that create running programs as specified in the System V
Application Binary Interface, Edition 4.1 and the System V Application Binary
Interface - DRAFT - April 29, 1998 and as supplemented by this document and
an architecture specific LSB specification.
</PARA>

<PARA>
Any shared object that is loaded must contain sufficient DT_NEEDED records to
satisfy the symbols on the shared library.
</PARA>
</CHAPTER>

<CHAPTER ID=DynamicSection>
<TITLE>Dynamic Entries</TITLE>
<PARA>
</PARA>
<SECT1 ID=dynsectent>
<TITLE>ELF Dynamic Entries</TITLE>
<PARA>
The following dynamic entries are defined in the System V 
Application Binary Interface, Edition 4.1.
<TABLE>
<TITLE>ELF Dynamic Entries</TITLE>
<TGROUP COLS=4>
include(dyntag.sgml)
</TGROUP>
</TABLE>
</PARA>
</SECT1>
<SECT1 ID=lindynsectent>
<TITLE>Linux Dynamic Entries</TITLE>
<PARA>
The following dynamic entries are defined here.
<TABLE>
<TITLE>Linux Dynamic Entries</TITLE>
<TGROUP COLS=2>
include(linuxtag.sgml)
</TGROUP>
</TABLE>
</PARA>
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
The LSB specifies the Program Interpreter to be
<ITEMIZEDLIST>
<LISTITEM><SCREEN>/lib/ld-lsb.so.1</SCREEN></LISTITEM>
</ITEMIZEDLIST>
</PARA>
</SECT1>
</CHAPTER>

</PART>
