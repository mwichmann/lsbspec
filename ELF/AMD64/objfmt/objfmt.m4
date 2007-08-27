<CHAPTER ID="tocobjformat">
<TITLE>Object Format</TITLE>
<SECT1>
<TITLE>Introduction</TITLE>
<PARA>
LSB-conforming implementations shall support the
Executable and Linking Format (ELF) object file format, 
as defined by the
<XREF LINKEND="std.gABI41"> , <XREF LINKEND="std.ABIUpdate"> ,
<XREF LINKEND="std.x86.64.ABI"> and as supplemented by the
generic LSB specification and
<XREF LINKEND="std.LSB">.
</PARA>
</SECT1>

<SECT1 ID=elfheader>
<TITLE>ELF Header</TITLE>
<SECT2 ID="machineinfo">
<TITLE>Machine Information</TITLE>
<PARA>
LSB-conforming applications shall identify the Machine Information as defined in
Section 4.1.1 of the 
<XREF LINKEND="std.x86.64.ABI">.
</PARA>
</SECT2>
</SECT1>

<SECT1 ID=sections>
<TITLE>Sections</TITLE>
<SECT2 ID="sectintro">
<TITLE>Introduction</TITLE>
<PARA>
In addition to the requirements for ELF sections described in the
generic LSB Core specification, conforming implementations shall
support architecture specific sections as described below.
<NOTE><PARA>The <XREF LINKEND="std.x86.64.ABI"> specifies some architecture specific section
flags and section types that are not required by LSB-conforming systems.
</PARA></NOTE>
</PARA>
</SECT2>
<SECT2 ID="specialsections">
<TITLE>Special Sections</TITLE>
<PARA>
The following architecture-specific sections are defined in the 
<XREF LINKEND="std.x86.64.ABI">.
m4_include(elfsect.sgml)
<NOTE><PARA>
Since LSB-conforming implementations are not required to support the
large code model, it is not necessary for them to provide support for the
additional special sections for the large code model described in the 
<XREF LINKEND="std.x86.64.ABI">.
</PARA><PARA>
Also, the 
<XREF LINKEND="std.x86.64.ABI"> specifies a section <literal>.eh_frame</literal>,
with a type of <literal>SHT_AMD64_UNWIND</literal>.
This section is described in the generic LSB-Core specification, but with type
<literal>SHT_PROGBITS</literal>. This specification does not require support
for the <literal>SHT_AMD64_UNWIND</literal> section type.
</PARA></NOTE>
</PARA>
</SECT2>
<SECT2 ID="linuxspecial">
<TITLE>Additional Special Sections</TITLE>
<PARA>
The following additional sections are defined here.
m4_include(linuxsect.sgml)
</PARA>
</SECT2>

</SECT1>

<SECT1 ID=symboltable>
<TITLE>Symbol Table</TITLE>

<PARA>
LSB-conforming applications shall use Symbol Tables as defined in
Section 4.3 of the <XREF LINKEND="std.x86.64.ABI">.
</PARA>

</SECT1>

<SECT1 ID=relocation>
<TITLE>Relocation</TITLE>

<PARA>
LSB-conforming implementation shall support the required relocation types
defined in
Section 4.4.1 of the <XREF LINKEND="std.x86.64.ABI">.
<NOTE><PARA>
Since LSB-conforming implementations are not required to support the
large code model, it is not necessary for them to provide support for the
additional relocation types for the large code model described in the 
<XREF LINKEND="std.x86.64.ABI">.
</PARA></NOTE>
</PARA>

</SECT1>

</CHAPTER>
