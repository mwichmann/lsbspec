<PART ID="tocdynlnk">
<TITLE>Dynamic Linking</TITLE>

<CHAPTER ID=dynlnk>
<TITLE>Program Loading and Dynamic Linking</TITLE>

<PARA>
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
The following dynamic entries are defined in the ELF IA-32 reference Specification.
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
The following Linux IA-32 dynamic entries are defined here.
<TABLE>
<TITLE>Linux Dynamic Entries</TITLE>
<TGROUP COLS=2>
include(linuxtag.sgml)
</TGROUP>
</TABLE>
</PARA>
</SECT1>
</CHAPTER>

</PART>
