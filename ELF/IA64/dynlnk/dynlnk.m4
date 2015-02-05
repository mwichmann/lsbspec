<CHAPTER ID="tocdynlnk">
<TITLE>Program Loading and Dynamic Linking</TITLE>
<SECT1><TITLE>Introduction</TITLE>
<PARA>
LSB-conforming implementations shall support the object file information and
system actions that create running programs as specified in the 
<xref linkend="std.gABI41">,
<xref linkend="std.IA64.ABI">
and as supplemented by the Linux
Standard Base Specification and this document.
</PARA>
</SECT1>

<SECT1 ID=programheader>
<TITLE>Program Header</TITLE>
<PARA>
The program header shall be as defined in the 
<xref linkend="std.IA64.ABI">, Chapter 5.
</PARA>

<SECT2 ID=progheadtypes>
<TITLE>Types</TITLE>
<PARA>
See
<xref linkend="std.IA64.ABI">, Chapter 5.1.
</PARA>
</SECT2>

<SECT2 ID=progheadflags>
<TITLE>Flags</TITLE>
<PARA>
See
<xref linkend="std.IA64.ABI">, Chapter 5.1.
</PARA>
</SECT2>

</SECT1>

<SECT1 ID=programloading>
<TITLE>Program Loading</TITLE>
<PARA>
See
<xref linkend="std.IA64.ABI">, Chapter 5.2.
</PARA>

</SECT1>

<SECT1 ID=dynamiclinking>
<TITLE>Dynamic Linking</TITLE>
<PARA>
See
<xref linkend="std.IA64.ABI">, Chapter 5.3.
</PARA>

<SECT2 ID=dynsection>
<TITLE>Dynamic Entries</TITLE>
<SECT3>
<TITLE>ELF Dynamic Entries</TITLE>
<PARA>
The following dynamic entries are defined in the 
<xref linkend="std.IA64.ABI">, Chapter 5.3.2.
m4_include(dyntag.sgml)
</PARA>
</SECT3>
<SECT3>
<TITLE>Additional Dynamic Entries</TITLE>
<PARA>
The following dynamic entries are defined here.
m4_include(linuxtag.sgml)
</PARA>
</SECT3>
</SECT2>

<SECT2 ID=globaloffsettable>
<TITLE>Global Offset Table</TITLE>
<PARA>
See
<xref linkend="std.IA64.ABI">, Chapter 5.3.4.
</PARA>
</SECT2>

<SECT2 ID=sharedobjectdependencies>
<TITLE>Shared Object Dependencies</TITLE>
<PARA>
See
<xref linkend="std.IA64.ABI">, Chapter 5.3.3.
</PARA>
</SECT2>

<SECT2 ID=functionaddresses>
<TITLE>Function Addresses</TITLE>
<PARA>
See
<xref linkend="std.IA64.ABI">, Chapter 5.3.5.
</PARA>
</SECT2>

<SECT2 ID=procedurelinkagetable>
<TITLE>Procedure Linkage Table</TITLE>
<PARA>
See
<xref linkend="std.IA64.ABI">, Chapter 5.3.6.
</PARA>
</SECT2>

<SECT2 ID=initandfinifunctons>
<TITLE>Initialization and Termination Functions</TITLE>
<PARA>
See
<xref linkend="std.IA64.ABI">, Chapter 5.3.7.
</PARA>
</SECT2>

</SECT1>

</CHAPTER>
