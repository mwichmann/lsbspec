<PART>
<TITLE>Dynamic Linking</TITLE>

<CHAPTER id=dynlnk>
<TITLE>Program Loading and Dynamic Linking</TITLE>

<PARA>
</PARA>

<PARA>
Any shared object that is loaded must contain sufficient DT_NEEDED records to
satisfy the symbols on the shared library.
</PARA>
</CHAPTER>


<CHAPTER id=DynamicSection>
<TITLE>Dynamic Entries</TITLE>
<PARA>
</PARA>
<SECT1>
<TITLE>ELF Dynamic Entries</TITLE>
<PARA>
The following dynamic entries are defined in the ELF reference Specification.
<TABLE>
<TITLE>ELF Dynamic Entries</TITLE>
<TGROUP COLS=4>
include(dyntag.sgml)
</TGROUP>
</TABLE>
</PARA>
</SECT1>
<SECT1>
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

<CHAPTER id=ProgramInterpreter>
<TITLE>
Program Intepreter
</TITLE>
<PARA>
</PARA>
<SECT1>
<TITLE>
</TITLE>
<PARA>
The LSB specifies that Program Intepreter to be
<ITEMIZEDLIST>
<LISTITEM><SCREEN>/lib/ld-linux.so.2</SCREEN></LISTITEM>
</ITEMIZEDLIST>
</PARA>
</SECT1>
</CHAPTER>

</PART>
