<PART ID="tocobjformat">
<TITLE>Object Format</TITLE>
<PARTINTRO>
<PARA>

LSB-conforming implementations shall support an object file format,
called Executable and Linking Format (ELF) as defined by the <XREF
LINKEND="std.S390X.ABI"> and as supplemented by the Linux Standard
Base Specification and this document. LSB-conforming implementations
need not support tags related functionality. LSB-conforming applications
must not rely on tags related functionality.

</PARA>
</PARTINTRO>

<CHAPTER ID=elfheader>
<TITLE>ELF Header</TITLE>
<SECT1 ID="machineinfo">
<TITLE>Machine Information</TITLE>
<PARA>
LSB-conforming applications shall use the Machine Information as defined in
<XREF LINKEND="std.S390X.ABI">, Chapter 2.
</PARA>
</SECT1>
</CHAPTER>

<CHAPTER ID=sections>
<TITLE>Sections</TITLE>
<PARA>
</PARA>
<SECT1 ID="specialsections">
<TITLE>Special Sections</TITLE>
<PARA>
The following sections are defined in the <XREF LINKEND="std.S390X.ABI">.
include(elfsect.sgml)
</PARA>
</SECT1>
<SECT1 ID="linuxspecial">
<TITLE>Linux Special Sections</TITLE>
<PARA>
The following Linux S/390 specific sections are defined here.
include(linuxsect.sgml)
</PARA>
</SECT1>

</CHAPTER>

<CHAPTER ID=symboltable>
<TITLE>Symbol Table</TITLE>

<PARA>
LSB-conforming applications shall use the Symbol Table as defined in
Chapter 2 of the <XREF LINKEND="std.S390X.ABI">.

</PARA>

</CHAPTER>

<CHAPTER ID=relocation>
<TITLE>Relocation</TITLE>

<PARA>
LSB-conforming applications shall use Relocations as defined in
Chapter 2 of the <XREF LINKEND="std.S390X.ABI">.
</PARA>

<SECT1 ID="relocationtypes">
<TITLE>Relocation Types</TITLE>
<PARA>
</PARA>
</SECT1>

</CHAPTER>

</PART>
