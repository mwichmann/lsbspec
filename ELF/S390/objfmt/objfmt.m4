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
<xref linkend="std.S390.ABI"> 
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
Chapter 2 of the
<XREF LINKEND="std.S390.ABI">.
</PARA>
</SECT2>
</SECT1>


<SECT1 ID=sections>
<TITLE>Sections</TITLE>
<PARA>
See chapter 2 of the <XREF LINKEND="std.S390.ABI">.
</PARA>

<SECT2 ID="elfspecial">
<TITLE>Special Sections</TITLE>
<PARA>
The following sections are defined in the <XREF LINKEND="std.S390.ABI">.
m4_include(elfsect.sgml)
</PARA>
</SECT2>
<SECT2>
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
LSB-conforming applications shall use the Symbol Table as defined in
Chapter 2 of the <XREF LINKEND="std.S390.ABI">.
</PARA>

</SECT1>

<SECT1 ID=relocation>
<TITLE>Relocation</TITLE>

<PARA>
LSB-conforming applications shall use Relocations as defined in
Chapter 2 of the <XREF LINKEND="std.S390.ABI">.
</PARA>

<SECT2 ID="relocationtypes">
<TITLE>Relocation Types</TITLE>
<PARA>
See chapter 2 of the <XREF LINKEND="std.S390.ABI">.
</PARA>
</SECT2>

</SECT1>

</CHAPTER>
