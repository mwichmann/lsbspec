<PART ID="tocobjformat">
<TITLE>Object Format</TITLE>
<PARTINTRO>
<PARA>

LSB-conforming implementations shall support an object file format,
called Executable and Linking Format (ELF) as defined by the <XREF
LINKEND="std.PPC64.ABI"> and as supplemented by the Linux Standard
Base Specification and this document. LSB-conforming implementations
need not support tags related functionality. LSB-conforming applications
must not rely on tags related functionality.

</PARA>
</PARTINTRO>

<CHAPTER ID=elfheader>
<TITLE>ELF Header</TITLE>
<PARA>
LSB-conforming applications shall use the ELF header as defined in
<XREF LINKEND="std.PPC64.ABI">, Chapter 4.
</PARA>
</CHAPTER>

<CHAPTER ID=specialsections>
<TITLE>Special Sections</TITLE>
<PARA>
The following sections are defined in the <XREF LINKEND="std.PPC64.ABI">.
include(elfsect.sgml)
</PARA>
</CHAPTER>

<CHAPTER ID=toc>
<TITLE>TOC</TITLE>
<PARA>
LSB-conforming applications shall use the Table of Contents (TOC) as defined in
<XREF LINKEND="std.PPC64.ABI">, Chapter 4.
</PARA>
</CHAPTER>

<CHAPTER ID=symboltable>
<TITLE>Symbol Table</TITLE>

<PARA>
LSB-conforming applications shall use the Symbol Table as defined in
Chapter 4 of the <XREF LINKEND="std.PPC64.ABI">.

</PARA>

<SECT1 ID="symbolvalues">
<TITLE>Symbol Values</TITLE>
<PARA>
See Chapter 4 of the <XREF LINKEND="std.PPC64.ABI">.
</PARA>
</SECT1>

</CHAPTER>

<CHAPTER ID=relocation>
<TITLE>Relocation</TITLE>

<PARA>
LSB-conforming applications shall use Relocations as defined in
Chapter 4 of the <XREF LINKEND="std.PPC64.ABI">.
</PARA>

<SECT1 ID="relocationtypes">
<TITLE>Relocation Types</TITLE>
<PARA>
See Chapter 4 of the <XREF LINKEND="std.PPC64.ABI">.
</PARA>
</SECT1>

</CHAPTER>

</PART>
