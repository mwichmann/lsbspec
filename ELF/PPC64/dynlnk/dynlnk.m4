<CHAPTER ID="tocdynlnk">
<TITLE>Program Loading and Dynamic Linking</TITLE>
<SECT1><TITLE>Introduction</TITLE>
<PARA>
LSB-conforming implementations shall support the object file information and
system actions that create running programs as specified in the 
<XREF LINKEND="std.gABI41">,
<XREF LINKEND="std.PPC64.ABI">
and as supplemented by the Linux
Standard Base Specification and this document.
</PARA>
</SECT1>


<SECT1 ID=programloading>
<TITLE>Program Loading</TITLE>
<PARA>
See
<XREF LINKEND="std.PPC64.ABI">, Chapter 5.1.
</PARA>

</SECT1>

<SECT1 ID=dynamiclinking>
<TITLE>Dynamic Linking</TITLE>
<PARA>
See
<XREF LINKEND="std.PPC64.ABI">, Chapter 5.2.
</PARA>

<SECT2 ID=dynsection>
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


</SECT2>

<SECT2 ID=globaloffsettable>
<TITLE>Global Offset Table</TITLE>
<PARA>
See
<XREF LINKEND="std.PPC64.ABI">, Chapter 5.2.2.
</PARA>
</SECT2>

<SECT2 ID=functionaddresses>
<TITLE>Function Addresses</TITLE>
<PARA>
See
<XREF LINKEND="std.PPC64.ABI">, Chapter 5.2.3.
</PARA>
</SECT2>

<SECT2 ID=procedurelinkagetable>
<TITLE>Procedure Linkage Table</TITLE>
<PARA>
See
<XREF LINKEND="std.PPC64.ABI">, Chapter 5.2.4.
</PARA>
</SECT2>

</SECT1>

</CHAPTER>
