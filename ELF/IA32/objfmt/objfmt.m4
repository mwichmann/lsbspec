<chapter id="tocobjformat">
<title>Object Format</title>

<sect1 id=objfmt>
<title>Introduction</title>
<para>
LSB-conforming implementations shall support the
Executable and Linking Format (ELF) object file format,
as defined by the following documents:
<itemizedlist mark=bullet>
<listitem>
<para>
<xref linkend="std.gABI41">
</para>
</listitem>
<listitem>
<para>
<xref linkend="std.ABIupdate">
</para>
</listitem>
<listitem>
<para>
<xref linkend="std.IA32.ABI.4">
</para>
</listitem>
<listitem>
<para>
<xref linkend="std.LSB"> 
</para>
</listitem>
<listitem>
<para>
this document
</para>
</listitem>
</itemizedlist>
</para>
</sect1>

<SECT1 ID=elfheader>
<TITLE>ELF Header</TITLE>
<SECT2 ID="machineinfo">
<TITLE>Machine Information</TITLE>
<PARA>
LSB-conforming applications shall use the Machine Information as defined in
Chapter 4 of the
<xref linkend="std.IA32.ABI.4">,
including the <structfield>e_ident</structfield> array members for
<constant>EI_CLASS</constant> and <constant>EI_DATA</constant>, the 
processor identification in <structfield>e_machine</structfield>
and flags in <structfield>e_flags</structfield>. The operating system
identification field, in <structfield>e_ident[EI_OSABI]</structfield>
shall be <constant>ELFOSABI_NONE</constant> (0).
</PARA>
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
The following section types are defined in the <xref linkend="std.IA32.ABI.4">.
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
<SECT2 ID="elfspecial">
<TITLE>Special Sections</TITLE>
<PARA>
Various sections hold program and control information. Sections in the lists 
below are used by the system and have the indicated types and attributes.
</PARA>
<SECT3>
<TITLE>ELF Special Sections</TITLE>
<PARA>
The following sections are defined in Chapter 4 of the <xref linkend="std.IA32.ABI.4">.
m4_include(elfsect.sgml)
</PARA>
</SECT3>
<SECT3>
<TITLE>Additional Special Sections</TITLE>
<PARA>
The following additional sections are defined here.
m4_include(linuxsect.sgml)
</PARA>
</SECT3>
</SECT2>

</SECT1>

<SECT1 ID=symboltable>
<TITLE>Symbol Table</TITLE>

<PARA>
LSB-conforming applications shall use the Symbol Table section as defined in
Chapter 4 of the <xref linkend="std.IA32.ABI.4">.
</PARA>

</SECT1>

<SECT1 ID=relocation>
<TITLE>Relocation</TITLE>
<SECT2 ID="relocationintro">
<TITLE>Introduction</TITLE>
<PARA>
LSB-conforming implementations shall support Relocation as defined in
Chapter 4 of the <xref linkend="std.IA32.ABI.4"> and as described below.
</PARA>
</SECT2>
<SECT2 ID="relocationtypes">
<TITLE>Relocation Types</TITLE>
<PARA>
The relocation types described in
Chapter 4 of the <xref linkend="std.IA32.ABI.4"> shall be supported.
</PARA>
</SECT2>

</SECT1>

</CHAPTER>
