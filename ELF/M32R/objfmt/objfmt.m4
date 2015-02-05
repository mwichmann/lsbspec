<part id="tocobjformat">
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
<xref linkend="std.M32R.ABI"> 
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

<CHAPTER ID=elfheader>
<TITLE>ELF Header</TITLE>
<PARA>
LSB-conforming applications shall use the ELF header as defined in
<xref linkend="std.M32R.ABI">, Chapter 4.
</PARA>
</CHAPTER>

<CHAPTER ID=specialsections>
<TITLE>Special Sections</TITLE>
<PARA>
The following sections are defined in the <xref linkend="std.M32R.ABI">.
m4_include(elfsect.sgml)
</PARA>
</CHAPTER>

<CHAPTER ID=symboltable>
<TITLE>Symbol Table</TITLE>

<PARA>
LSB-conforming applications shall use the Symbol Table as defined in
Chapter 4 of the <xref linkend="std.M32R.ABI">.

</PARA>

<SECT1 ID="symbolvalues">
<TITLE>Symbol Values</TITLE>
<PARA>
</PARA>
</SECT1>

</CHAPTER>

<CHAPTER ID=relocation>
<TITLE>Relocation</TITLE>

<PARA>
LSB-conforming applications shall use Relocations as defined in
Chapter 4 of the <xref linkend="std.M32R.ABI">.
</PARA>

<SECT1 ID="relocationtypes">
<TITLE>Relocation Types</TITLE>
<PARA>
</PARA>
</SECT1>

</CHAPTER>

</PART>
