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
<xref linkend="std.PPC32.ABI"> 
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
<SECT2 ID="machineinfo">
<TITLE>Machine Information</TITLE>
<PARA>
LSB-conforming applications shall use the Machine Information as defined in
<xref linkend="std.PPC32.ABI">, Chapter 4, Section "ELF Header" Subsection "Machine Information".
</PARA>
</SECT2>
</SECT1>

<SECT1 ID=sections>
<TITLE>Sections</TITLE>
<PARA>
</PARA>
<SECT2 ID="specialsections">
<TITLE>Special Sections</TITLE>
<PARA>
The following sections are defined in the <xref linkend="std.PPC32.ABI"> Chapter 4, 
Section "Section", Subsection "Special Sections".
m4_include(elfsect.sgml)
Note that the <literal>.tags</literal>, <literal>.taglist</literal> and <literal>.tagsym</literal> sections described in 
Chapter 4, Section "Sections" <xref linkend="std.PPC32.ABI"> are not supported.
</PARA>
</SECT2>
<SECT2 ID="linuxspecial">
<TITLE>Linux Special Sections</TITLE>
<PARA>
The following Linux PPC32 specific sections are defined here.
m4_include(linuxsect.sgml)
</PARA>
</SECT2>

</SECT1>

<SECT1 ID=symboltable>
<TITLE>Symbol Table</TITLE>

<PARA>
LSB-conforming applications shall use the Symbol Table as defined in
Chapter 4, Section "Symbol Table" of the <xref linkend="std.PPC32.ABI">.

</PARA>

</SECT1>

<SECT1 ID=relocation>
<TITLE>Relocation</TITLE>

<PARA>
LSB-conforming applications shall use Relocations as defined in
Chapter 4, Section "Relocation" of the <xref linkend="std.PPC32.ABI">.
</PARA>

<SECT2 ID="relocationtypes">
<TITLE>Relocation Types</TITLE>
<PARA>
LSB-conforming applications shall support the relocation types 
as defined in the Chapter 4, Section "Relocation" Subsection "Relocation Typles"
except for the relocation type <literal>R_PPC_ADDR30</literal> as specified in Table 4-8 of
<xref linkend="std.PPC32.ABI">.
</PARA>
</SECT2>

</SECT1>

</CHAPTER>
