<CHAPTER ID="tocdynlnk">
<TITLE>Program Loading and Dynamic Linking</TITLE>
<SECT1><TITLE>Introduction</TITLE>
<PARA>
LSB-conforming implementations shall support the object file information and
system actions that create running programs as specified in the 
<XREF LINKEND="std.gABI41">,
<XREF LINKEND="std.PPC32.ABI">
and as supplemented by the generic Linux
Standard Base Specification and this document.
</PARA>
</SECT1>

<SECT1 ID=programheader>
<TITLE>Program Header</TITLE>
<PARA>
</PARA>

<SECT2 ID=progheadtypes>
<TITLE>Types</TITLE>
<PARA>
</PARA>
</SECT2>

<SECT2 ID=progheadflags>
<TITLE>Flags</TITLE>
<PARA>
</PARA>
</SECT2>

</SECT1>

<SECT1 ID=programloading>
<TITLE>Program Loading</TITLE>
<PARA>
See
<XREF LINKEND="std.PPC32.ABI">, Chapter 5.1.
</PARA>

</SECT1>

<SECT1 ID=dynamiclinking>
<TITLE>Dynamic Linking</TITLE>
<PARA>
See
<XREF LINKEND="std.PPC32.ABI">, Chapter 5.4.
</PARA>

<SECT2 ID=dynsection>
<TITLE>Dynamic Section</TITLE>
<PARA>
The following dynamic entries are defined in the 
<XREF LINKEND="std.PPC32.ABI">, Chapter 5.4.
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
<XREF LINKEND="std.PPC32.ABI">, Chapter 5.4.
</PARA>
</SECT2>

<SECT2 ID=sharedobjectdependencies>
<TITLE>Shared Object Dependencies</TITLE>
<PARA>
See Chapter 5 of the <XREF LINKEND="std.PPC32.ABI">.
</PARA>
</SECT2>

<SECT2 ID=functionaddresses>
<TITLE>Function Addresses</TITLE>
<PARA>
See Chapter 5 of the <XREF LINKEND="std.PPC32.ABI">.
</PARA>
</SECT2>

<SECT2 ID=procedurelinkagetable>
<TITLE>Procedure Linkage Table</TITLE>
<PARA>
See Chapter 5 of the <XREF LINKEND="std.PPC32.ABI">.
</PARA>
</SECT2>

<SECT2 ID=initandfinifunctons>
<TITLE>Initialization and Termination Functions</TITLE>
<PARA>
</PARA>
</SECT2>

</SECT1>

</CHAPTER>
