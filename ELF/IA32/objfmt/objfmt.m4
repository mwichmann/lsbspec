<PART ID="tocobjformat">
<TITLE>Object Format</TITLE>
<PARTINTRO>
<PARA>
LSB-conforming implementations shall support an object file format, called
Executable and Linking Format (ELF) as defined by the
<XREF LINKEND="std.gABI41"> , <XREF LINKEND="std.ABIUpdate"> ,
<XREF LINKEND="std.IA32.ABI.4"> and as supplemented by the
<XREF LINKEND="std.LSB"> and this document.
</PARA>
</PARTINTRO>

<CHAPTER ID=elfheader>
<TITLE>ELF Header</TITLE>
<SECT1 ID="machineinfo">
<TITLE>Machine Information</TITLE>
<PARA>
LSB-conforming applications shall use the Machine Information as defined in
Chapter 4 of the
<XREF LINKEND="std.IA32.ABI.4">.
</PARA>
<SECT2 ID="mifileclass">
<TITLE>File Class</TITLE>
<PARA>
</PARA>
</SECT2>
<SECT2 ID="midataencoding">
<TITLE>Data Encoding</TITLE>
<PARA>
</PARA>
</SECT2>
<SECT2 ID="miosidentification">
<TITLE>OS Identification</TITLE>
<PARA>
</PARA>
</SECT2>
<SECT2 ID="miprocessorident">
<TITLE>Processor Identification</TITLE>
<PARA>
</PARA>
</SECT2>
<SECT2 ID="miprocessorspecialflags">
<TITLE>Processor Specific Flags</TITLE>
<PARA>
</PARA>
</SECT2>
</SECT1>
</CHAPTER>

<!-- These are currently empty on IA32, so just leave them out.
<CHAPTER ID=sections>
<TITLE>Sections</TITLE>
<PARA>
</PARA>

<SECT1 ID="elftypes">
<TITLE>Section Types</TITLE>
<PARA>
A section header's <COMPUTEROUTPUT>sh_type</COMPUTEROUTPUT> member specifies the
 sections's semantics.
</PARA>
<SECT2>
<TITLE>ELF Section Types</TITLE>
<PARA>
The following section types are defined in the <XREF LINKEND="std.IA32.ABI.4">.
Xinclude(elfsecttypes.sgml)
</PARA>
</SECT2>
<SECT2>
<TITLE>Additional Section Types</TITLE>
<PARA>
The following additional section types are defined here.

Xinclude(linuxsecttypes.sgml)
</PARA>
</SECT2>
</SECT1>

<SECT1 ID="sectionattribflags">
<TITLE>Section Attribute Flags</TITLE>
<PARA>
</PARA>
</SECT1>

<SECT1 ID="specialsectiontypes">
<TITLE>Special Section Types</TITLE>
<PARA>
</PARA>
</SECT1>
</CHAPTER>
-->

<CHAPTER ID=specialsections>
<TITLE>Special Sections</TITLE>
<PARA>
</PARA>

<SECT1 ID="elfspecial">
<TITLE>Special Sections</TITLE>
<PARA>
Various sections hold program and control information. Sections in the lists bel
ow are used by the system and have the indicated types and attributes.
</PARA>
<SECT2>
<TITLE>ELF Special Sections</TITLE>
<PARA>
The following sections are defined in the <XREF LINKEND="std.IA32.ABI.4">.
include(elfsect.sgml)
</PARA>
</SECT2>
<SECT2>
<TITLE>Addition Special Sections</TITLE>
<PARA>
The following additional sections are defined here.
include(linuxsect.sgml)
</PARA>
</SECT2>
</SECT1>

</CHAPTER>

<CHAPTER ID=symboltable>
<TITLE>Symbol Table</TITLE>

<PARA>
LSB-conforming applications shall use the Symbol Table as defined in
Chapter 4 of the <XREF LINKEND="std.IA32.ABI.4">.
</PARA>

</CHAPTER>

<CHAPTER ID=relocation>
<TITLE>Relocation</TITLE>

<PARA>
LSB-conforming applications shall use Relocations as defined in
Chapter 4 of the <XREF LINKEND="std.IA32.ABI.4">.
</PARA>

<SECT1 ID="relocationtypes">
<TITLE>Relocation Types</TITLE>
<PARA>
</PARA>
</SECT1>

</CHAPTER>

</PART>
