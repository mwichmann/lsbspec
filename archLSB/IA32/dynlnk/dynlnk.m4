<PART ID="tocdynlnk">
<TITLE>Dynamic Linking</TITLE>

<CHAPTER ID=dynlnk>
<TITLE>Program Loading and Dynamic Linking</TITLE>

<PARA>
LSB-conforming implementations shall support the object file information and
system actions that create running programs as specified in the System V
Application Binary Interface, Edition 4.1, the System V Application Binary
Interface - DRAFT - April 29, 1998, System V Application Binary Interface -
Intel386 Architecture Processor Supplement and as supplemented by the Linux
Standard Base Specification and this document.
</PARA>
</CHAPTER>

<CHAPTER ID=DynamicSection>
<TITLE>Dynamic Entries</TITLE>
<PARA>
</PARA>
<SECT1 ID=dynsectent>
<TITLE>ELF Dynamic Entries</TITLE>
<PARA>
The following dynamic entries are defined in the System V Application Binary
Interface - Intel386 Architecture Processor Supplement.
<TABLE>
<TITLE>ELF Dynamic Entries</TITLE>
<TGROUP COLS=4>
include(dyntag.sgml)
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
<LISTITEM><SCREEN>/lib/lsb/ld-lsb.so.1</SCREEN></LISTITEM>
</ITEMIZEDLIST>
</PARA>
</SECT1>
</CHAPTER>

</PART>
