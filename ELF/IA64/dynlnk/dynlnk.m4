<PART ID="tocdynlnk">
<TITLE>Program Loading and Dynamic Linking</TITLE>
<PARTINTRO>
<PARA>
LSB-conforming implementations shall support the object file information and
system actions that create running programs as specified in the 
<LINK LINKEND="std.gABI.41">
<XREF LINKEND="std.gABI.41">
</LINK>,
<LINK LINKEND="std.IA64.ABI">
<XREF LINKEND="std.IA64.ABI">
</LINK>
and as supplemented by the Linux
Standard Base Specification and this document.
</PARA>
</PARTINTRO>

<CHAPTER ID=programheader>
<TITLE>Program Header</TITLE>
<PARA>
The program header shall be as defined in the 
<LINK LINKEND="std.IA64.ABI">
<XREF LINKEND="std.IA64.ABI">
</LINK>, Chapter 5.
</PARA>

<SECT1 ID=progheadtypes>
<TITLE>Types</TITLE>
<PARA>
See
<LINK LINKEND="std.IA64.ABI">
<XREF LINKEND="std.IA64.ABI">
</LINK>, Chapter 5.1.
</PARA>
</SECT1>

<SECT1 ID=progheadflags>
<TITLE>Flags</TITLE>
<PARA>
See
<LINK LINKEND="std.IA64.ABI">
<XREF LINKEND="std.IA64.ABI">
</LINK>, Chapter 5.1.
</PARA>
</SECT1>

</CHAPTER>

<CHAPTER ID=programloading>
<TITLE>Program Loading</TITLE>
<PARA>
See
<LINK LINKEND="std.IA64.ABI">
<XREF LINKEND="std.IA64.ABI">
</LINK>, Chapter 5.2.
</PARA>

</CHAPTER>

<CHAPTER ID=dynamiclinking>
<TITLE>Dynamic Linking</TITLE>
<PARA>
See
<LINK LINKEND="std.IA64.ABI">
<XREF LINKEND="std.IA64.ABI">
</LINK>, Chapter 5.3.
</PARA>

<SECT1 ID=proginterp>
<TITLE>Program Intepreter/Dynamic Linker</TITLE>
<PARA>
The LSB specifies the Program Interpreter to be
<FILENAME>/lib/lsb/ld-lsb.so.1</FILENAME>.
<NOTE>Editor's note ... check this is correct!</NOTE>
</PARA>
</SECT1>

<SECT1 ID=dynsection>
<TITLE>Dynamic Section</TITLE>
<PARA>
The following dynamic entries are defined in the 
<LINK LINKEND="std.IA64.ABI">
<XREF LINKEND="std.IA64.ABI">
</LINK>, Chapter 5.3.2.
include(dyntag.sgml)
</PARA>
</SECT1>

<SECT1 ID=globaloffsettable>
<TITLE>Global Offset Table</TITLE>
<PARA>
See
<LINK LINKEND="std.IA64.ABI">
<XREF LINKEND="std.IA64.ABI">
</LINK>, Chapter 5.3.4.
</PARA>
</SECT1>

<SECT1 ID=sharedobjectdependencies>
<TITLE>Shared Object Dependencies</TITLE>
<PARA>
See
<LINK LINKEND="std.IA64.ABI">
<XREF LINKEND="std.IA64.ABI">
</LINK>, Chapter 5.3.3.
</PARA>
</SECT1>

<SECT1 ID=functionaddresses>
<TITLE>Function Addresses</TITLE>
<PARA>
See
<LINK LINKEND="std.IA64.ABI">
<XREF LINKEND="std.IA64.ABI">
</LINK>, Chapter 5.3.5.
</PARA>
</SECT1>

<SECT1 ID=procedurelinkagetable>
<TITLE>Procedure Linkage Table</TITLE>
<PARA>
See
<LINK LINKEND="std.IA64.ABI">
<XREF LINKEND="std.IA64.ABI">
</LINK>, Chapter 5.3.6.
</PARA>
</SECT1>

<SECT1 ID=initandfinifunctons>
<TITLE>Initialization and Termination Functions</TITLE>
<PARA>
See
<LINK LINKEND="std.IA64.ABI">
<XREF LINKEND="std.IA64.ABI">
</LINK>, Chapter 5.3.7.
</PARA>
</SECT1>

</CHAPTER>

</PART>
