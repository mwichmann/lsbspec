<CHAPTER ID="tocobjformat">
<TITLE>Object Format</TITLE>
<SECT1><TITLE>Introduction</TITLE>
<PARA>

LSB-conforming implementations shall support an object file format,
called Executable and Linking Format (ELF) as defined by the <XREF
LINKEND="std.PPC32.ABI"> and as supplemented by the Linux Standard
Base Specification and this document. LSB-conforming implementations
need not support tags related functionality. LSB-conforming applications
must not rely on tags related functionality.

</PARA>
</SECT1>

<SECT1 ID=elfheader>
<TITLE>ELF Header</TITLE>
<SECT2 ID="machineinfo">
<TITLE>Machine Information</TITLE>
<PARA>
LSB-conforming applications shall use the Machine Information as defined in
<XREF LINKEND="std.PPC32.ABI">, Chapter 4, Section "ELF Header" Subsection "Machine Information".
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
The following sections are defined in the <XREF LINKEND="std.PPC32.ABI"> Chapter 4, 
Section "Section", Subsection "Special Sections".
m4_include(elfsect.sgml)
Note that the <literal>.tags</>, <literal>.taglist</> and <literal>.tagsym</> sections described in 
Chapter 4, Section "Sections" <XREF LINKEND="std.PPC32.ABI"> are not supported.
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
Chapter 4, Section "Symbol Table" of the <XREF LINKEND="std.PPC32.ABI">.

</PARA>

</SECT1>

<SECT1 ID=relocation>
<TITLE>Relocation</TITLE>

<PARA>
LSB-conforming applications shall use Relocations as defined in
Chapter 4, Section "Relocation" of the <XREF LINKEND="std.PPC32.ABI">.
</PARA>

<SECT2 ID="relocationtypes">
<TITLE>Relocation Types</TITLE>
<PARA>
LSB-conforming applications shall support the relocation types 
as defined in the Chapter 4, Section "Relocation" Subsection "Relocation Typles"
except for the relocation type <literal>R_PPC_ADDR30</> as specified in Table 4-8 of
<XREF LINKEND="std.PPC32.ABI">.
</PARA>
</SECT2>

</SECT1>

</CHAPTER>
