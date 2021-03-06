<CHAPTER ID="tocdynlnk">
<TITLE>Program Loading and Dynamic Linking</TITLE>
<SECT1><TITLE>Introduction</TITLE>
<PARA>
LSB-conforming implementations shall support the object file information and
system actions that create running programs as specified in the
<xref linkend="std.gABI41"> , <xref linkend="std.ABIUpdate"> ,
<xref linkend="std.IA32.ABI.4"> and as supplemented by 
<xref linkend="std.LSB">
and the generic LSB specification.
</PARA>
</SECT1>

<SECT1 ID=programheader>
<TITLE>Program Header</TITLE>
<SECT2 ID="programheader-intro">
<TITLE>Introduction</TITLE>
<PARA>
As described in <xref linkend="std.ABIUpdate">, the program header is an array
of structures, each describing a segment or other information the system
needs to prepare the program for execution.
</PARA>
</SECT2>

<SECT2 ID=progheadtypes>
<TITLE>Types</TITLE>
<PARA>
The IA32 architecture does not define any additional program header types
beyond those required in the generic LSB Core specification.
</PARA>
</SECT2>

<SECT2 ID=progheadflags>
<TITLE>Flags</TITLE>
<PARA>
The IA32 architecture does not define any additional program header flags
beyond those required in the generic LSB Core specification.
</PARA>
</SECT2>

</SECT1>

<SECT1 ID=programloading>
<TITLE>Program Loading</TITLE>
<PARA>
LSB-conforming systems shall support program loading as defined in 
Chapter 5 of the <xref linkend="std.IA32.ABI.4">.
</PARA>

</SECT1>

<SECT1 ID=dynamiclinking>
<TITLE>Dynamic Linking</TITLE>
<PARA>
LSB-conforming systems shall support dynamic linking as defined in 
Chapter 5 of the <xref linkend="std.IA32.ABI.4">.
</PARA>

<SECT2 ID=dynsection>
<TITLE>Dynamic Section</TITLE>
<PARA>
The following dynamic entries are defined in the
<xref linkend="std.IA32.ABI.4">.
m4_include(dyntag.sgml)
</PARA>
</SECT2>

<SECT2 ID=globaloffettable>
<TITLE>Global Offset Table</TITLE>
<PARA>
LSB-conforming implementations shall support use of the
global offset table as described in
Chapter 5 of the <xref linkend="std.IA32.ABI.4">.
</PARA>
</SECT2>

<SECT2 ID=sharedobjectdependencies>
<TITLE>Shared Object Dependencies</TITLE>
<PARA>
There are no architecture specific requirements for shared object dependencies;
see the generic LSB-Core specification.
</PARA>
</SECT2>

<SECT2 ID=functionaddresses>
<TITLE>Function Addresses</TITLE>
<PARA>
Function addresses shall behave as specified in 
Chapter 5 of the <xref linkend="std.IA32.ABI.4">.
</PARA>
</SECT2>

<SECT2 ID=procedurelinkagetable>
<TITLE>Procedure Linkage Table</TITLE>
<PARA>
LSB-conforming implementations shall support a Procedure Linkage Table as described in
Chapter 5 of the <xref linkend="std.IA32.ABI.4">.
</PARA>
</SECT2>

<SECT2 ID=initandfinifunctons>
<TITLE>Initialization and Termination Functions</TITLE>
<PARA>
There are no architecture specific requirements for
initialization and termination functions; see the generic
LSB-Core specification.
</PARA>
</SECT2>

</SECT1>

</CHAPTER>
