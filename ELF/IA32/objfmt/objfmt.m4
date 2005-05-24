<CHAPTER ID="tocobjformat">
<TITLE>Object Format</TITLE>
<SECT1><TITLE>Introduction</TITLE>
<PARA>
LSB-conforming implementations shall support an object file format, called
Executable and Linking Format (ELF) as defined by the
<XREF LINKEND="std.gABI41"> , <XREF LINKEND="std.ABIUpdate"> ,
<XREF LINKEND="std.IA32.ABI.4"> and as supplemented by the
<XREF LINKEND="std.LSB"> and the generic LSB specification.
</PARA>
</SECT1>

<SECT1 ID=elfheader>
<TITLE>ELF Header</TITLE>
<SECT2 ID="machineinfo">
<TITLE>Machine Information</TITLE>
<PARA>
LSB-conforming applications shall use the Machine Information as defined in
Chapter 4 of the
<XREF LINKEND="std.IA32.ABI.4">.
</PARA>
<SECT3 ID="mifileclass">
<TITLE>File Class</TITLE>
<PARA>
See Chapter 4 of the <XREF LINKEND="std.IA32.ABI.4">.
</PARA>
</SECT3>
<SECT3 ID="midataencoding">
<TITLE>Data Encoding</TITLE>
<PARA>
See Chapter 4 of the <XREF LINKEND="std.IA32.ABI.4">.
</PARA>
</SECT3>
<SECT3 ID="miosidentification">
<TITLE>OS Identification</TITLE>
<PARA>
See Chapter 4 of the <XREF LINKEND="std.IA32.ABI.4">.
</PARA>
</SECT3>
<SECT3 ID="miprocessorident">
<TITLE>Processor Identification</TITLE>
<PARA>
See Chapter 4 of the <XREF LINKEND="std.IA32.ABI.4">.
</PARA>
</SECT3>
<SECT3 ID="miprocessorspecialflags">
<TITLE>Processor Specific Flags</TITLE>
<PARA>
See Chapter 4 of the <XREF LINKEND="std.IA32.ABI.4">.
</PARA>
</SECT3>
</SECT2>
</SECT1>

<!-- These are currently empty on IA32, so just leave them out.
<SECT1 ID=sections>
<TITLE>Sections</TITLE>
<PARA>
</PARA>

<SECT2 ID="elftypes">
<TITLE>Section Types</TITLE>
<PARA>
A section header's <COMPUTEROUTPUT>sh_type</COMPUTEROUTPUT> member specifies the
 sections's semantics.
</PARA>
<SECT3>
<TITLE>ELF Section Types</TITLE>
<PARA>
The following section types are defined in the <XREF LINKEND="std.IA32.ABI.4">.
Xinclude(elfsecttypes.sgml)
</PARA>
</SECT3>
<SECT3>
<TITLE>Additional Section Types</TITLE>
<PARA>
The following additional section types are defined here.

Xinclude(linuxsecttypes.sgml)
</PARA>
</SECT3>
</SECT2>

<SECT2 ID="sectionattribflags">
<TITLE>Section Attribute Flags</TITLE>
<PARA>
</PARA>
</SECT2>

<SECT2 ID="specialsectiontypes">
<TITLE>Special Section Types</TITLE>
<PARA>
</PARA>
</SECT2>
</SECT1>
-->

<SECT1 ID=specialsections>
<TITLE>Special Sections</TITLE>
<PARA>
See Chapter 4 of the <XREF LINKEND="std.IA32.ABI.4">.
</PARA>

<SECT2 ID="elfspecial">
<TITLE>Special Sections</TITLE>
<PARA>
Various sections hold program and control information. Sections in the lists bel
ow are used by the system and have the indicated types and attributes.
</PARA>
<SECT3>
<TITLE>ELF Special Sections</TITLE>
<PARA>
The following sections are defined in the <XREF LINKEND="std.IA32.ABI.4">.
include(elfsect.sgml)
</PARA>
</SECT3>
<SECT3>
<TITLE>Addition Special Sections</TITLE>
<PARA>
The following additional sections are defined here.
include(linuxsect.sgml)
</PARA>
</SECT3>
</SECT2>

</SECT1>

<SECT1 ID=symboltable>
<TITLE>Symbol Table</TITLE>

<PARA>
LSB-conforming applications shall use the Symbol Table as defined in
Chapter 4 of the <XREF LINKEND="std.IA32.ABI.4">.
</PARA>

</SECT1>

<SECT1 ID=relocation>
<TITLE>Relocation</TITLE>

<PARA>
LSB-conforming applications shall use Relocations as defined in
Chapter 4 of the <XREF LINKEND="std.IA32.ABI.4">.
</PARA>

<SECT2 ID="relocationtypes">
<TITLE>Relocation Types</TITLE>
<PARA>
See Chapter 4 of the <XREF LINKEND="std.IA32.ABI.4">.
</PARA>
</SECT2>

</SECT1>

</CHAPTER>
