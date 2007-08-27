<CHAPTER ID="tocdynlnk">
<TITLE>Program Loading and Dynamic Linking</TITLE>
<SECT1>
<TITLE>Introduction</TITLE>
<PARA>
LSB-conforming implementations shall support the object file information and
system actions that create running programs as specified in the
<XREF LINKEND="std.gABI41"> , <XREF LINKEND="std.ABIUpdate"> ,
<XREF LINKEND="std.x86.64.ABI"> and as supplemented by the
generic LSB specification and
<XREF LINKEND="std.LSB">.
</PARA>
</SECT1>

<SECT1 ID=programheader>
<TITLE>Program Header</TITLE>
<PARA>
LSB-conforming implementations are not required to support the additional
types and flags for this architecture as defined in Section 5.1 of the
<XREF LINKEND="std.x86.64.ABI">.
<NOTE><PARA>
The <XREF LINKEND="STD.X86.64.ABI"> specification is itself layered on top of
the System V Application Binary Interface - Intel386&trade; Architecture Processor Supplement.
As such, the requirements of that specification are still requirements of this specification.
</PARA></NOTE>
</PARA>

</SECT1>

<SECT1 ID=programloading>
<TITLE>Program Loading</TITLE>
<PARA>
LSB-conforming implementations shall map file pages
to virtual memory pages as described in Section 5.1
of the
<XREF LINKEND="std.x86.64.ABI">.
</PARA>

</SECT1>

<SECT1 ID=dynamiclinking>
<TITLE>Dynamic Linking</TITLE>
<SECT2 ID=dynsection-intro>
<TITLE>Introduction</TITLE>
<PARA>
LSB-conforming implementations shall provide dynamic linking as
specified in Section 5.2 of the <XREF LINKEND="STD.X86.64.ABI">,
except as described in the following sections.
<NOTE><PARA>
Since LSB-conforming implementations are not required to support the
large model, support for dynamic linking of large model code is not
required.
</PARA></NOTE>
</PARA>
</SECT2>
<SECT2 ID=dynsection>
<TITLE>Dynamic Section</TITLE>
<PARA>
Dynamic section entries give information to the dynamic linker.
The following dynamic entry types shall be supported:
m4_include(dyntag.sgml)
</PARA>
</SECT2>

<SECT2 ID=globaloffettable>
<TITLE>Global Offset Table</TITLE>
<PARA>
LSB-conforming implementations shall support a 
Global Offset Table as described in Section 5.2 of the
<XREF LINKEND="std.x86.64.ABI">.
</PARA>
</SECT2>

<SECT2 ID=functionaddresses>
<TITLE>Function Addresses</TITLE>
<PARA>
Function addresses shall behave as described in
Section 5.2 of the
<XREF LINKEND="std.X86.64.ABI">.
</PARA>
</SECT2>

<SECT2 ID=proceedurelinkagetable>
<TITLE>Procedure Linkage Table</TITLE>
<PARA>
LSB-conforming implementations shall support a 
Procedure Linkage Table as described in Section 5.2 of the
<XREF LINKEND="std.X86.64.ABI">.
</PARA>
</SECT2>

<SECT2 ID=initandfinifunctons>
<TITLE>Initialization and Termination Functions</TITLE>
<PARA>
LSB-conforming implementations shall support initialization
and termination functions as specified in
Section 5.2.2 of the <XREF LINKEND="std.X86.64.ABI">.
</PARA>
</SECT2>

</SECT1>

</CHAPTER>
