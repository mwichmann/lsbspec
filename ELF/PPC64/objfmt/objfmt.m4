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
<xref linkend="std.PPC64.ABI">
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

<para>
LSB-conforming implementations
need not support tags related functionality. LSB-conforming applications
must not rely on tags related functionality.
</para>
</sect1>

<SECT1 ID=elfheader>
<TITLE>ELF Header</TITLE>
<PARA>
LSB-conforming applications shall use the ELF header as defined in
<XREF LINKEND="std.PPC64.ABI">, Chapter 4.
</PARA>
</SECT1>

<SECT1 ID=specialsections>
<TITLE>Special Sections</TITLE>
<PARA>
The following sections are defined in the <XREF LINKEND="std.PPC64.ABI">.
m4_include(elfsect.sgml)
</PARA>
<SECT2>
<TITLE>Additional Special Sections</TITLE>
<PARA>
The following additional sections are defined here.
m4_include(linuxsect.sgml)
</PARA>
</SECT2>

</SECT1>

<SECT1 ID=toc>
<TITLE>TOC</TITLE>
<PARA>
LSB-conforming applications shall use the Table of Contents (TOC) as defined in
<XREF LINKEND="std.PPC64.ABI">, Chapter 4.
</PARA>
</SECT1>

<SECT1 ID=symboltable>
<TITLE>Symbol Table</TITLE>

<PARA>
LSB-conforming applications shall use the Symbol Table as defined in
Chapter 4 of the <XREF LINKEND="std.PPC64.ABI">.

</PARA>

<SECT2 ID="symbolvalues">
<TITLE>Symbol Values</TITLE>
<PARA>
See Chapter 4 of the <XREF LINKEND="std.PPC64.ABI">.
</PARA>
</SECT2>

</SECT1>

<SECT1 ID=relocation>
<TITLE>Relocation</TITLE>

<PARA>
LSB-conforming applications shall use Relocations as defined in
Chapter 4 of the <XREF LINKEND="std.PPC64.ABI">.
</PARA>

<SECT2 ID="relocationtypes">
<TITLE>Relocation Types</TITLE>
<PARA>
See Chapter 4 of the <XREF LINKEND="std.PPC64.ABI">.
</PARA>
</SECT2>

</SECT1>

</CHAPTER>
