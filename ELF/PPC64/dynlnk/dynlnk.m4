<PART ID="tocdynlnk">
<TITLE>Program Loading and Dynamic Linking</TITLE>
<PARTINTRO>
<PARA>
LSB-conforming implementations shall support the object file information and
system actions that create running programs as specified in the 
<XREF LINKEND="std.gABI41">,
<XREF LINKEND="std.PPC64.ABI">
and as supplemented by the Linux
Standard Base Specification and this document.
</PARA>
</PARTINTRO>


<CHAPTER ID=programloading>
<TITLE>Program Loading</TITLE>
<PARA>
See
<XREF LINKEND="std.PPC64.ABI">, Chapter 5.1.
</PARA>

</CHAPTER>

<CHAPTER ID=dynamiclinking>
<TITLE>Dynamic Linking</TITLE>
<PARA>
See
<XREF LINKEND="std.PPC64.ABI">, Chapter 5.2.
</PARA>

<SECT1 ID=dynsection>
<TITLE>Dynamic Section</TITLE>
<PARA>
The following dynamic entries are defined in the 
<XREF LINKEND="std.PPC64.ABI">, Chapter 5.2.
include(dyntag.sgml)
</PARA>

<PARA>
In addtion the following dynamic entries are also supported:
include(linuxtag.sgml)
</PARA>


</SECT1>

<SECT1 ID=globaloffsettable>
<TITLE>Global Offset Table</TITLE>
<PARA>
See
<XREF LINKEND="std.PPC64.ABI">, Chapter 5.2.
</PARA>
</SECT1>

<SECT1 ID=functionaddresses>
<TITLE>Function Addresses</TITLE>
<PARA>
</PARA>
</SECT1>

<SECT1 ID=procedurelinkagetable>
<TITLE>Procedure Linkage Table</TITLE>
<PARA>
</PARA>
</SECT1>

</CHAPTER>

</PART>
