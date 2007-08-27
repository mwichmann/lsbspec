<CHAPTER ID="tocobjformat">
<TITLE>Object Format</TITLE>
<SECT1><TITLE>Introduction</TITLE>
<PARA>

LSB-conforming implementations shall support an object file format,
called Executable and Linking Format (ELF) as defined by the <XREF
LINKEND="std.PPC64.ABI"> and as supplemented by the Linux Standard
Base Specification and this document. LSB-conforming implementations
need not support tags related functionality. LSB-conforming applications
must not rely on tags related functionality.

</PARA>
</SECT1>

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
