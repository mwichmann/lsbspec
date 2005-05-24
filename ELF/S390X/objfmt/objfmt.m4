<CHAPTER ID="tocobjformat">
<TITLE>Object Format</TITLE>
<SECT1><TITLE>Introduction</TITLE>
<PARA>
LSB-conforming implementations shall support an object file format, called
Executable and Linking Format (ELF) as defined by the
<XREF LINKEND="std.gABI41"> , <XREF LINKEND="std.ABIUpdate"> ,
<XREF LINKEND="std.S390X.ABI"> and as supplemented by the
generic LSB and this document.
</PARA>
</SECT1>

<SECT1 ID=elfheader>
<TITLE>ELF Header</TITLE>
<SECT2 ID="machineinfo">
<TITLE>Machine Information</TITLE>
<PARA>
LSB-conforming applications shall use the Machine Information as defined in
Chapter 2 of the
<XREF LINKEND="std.S390X.ABI">.
</PARA>
</SECT2>
</SECT1>

<SECT1 ID=sections>
<TITLE>Sections</TITLE>
<PARA>
See chapter 2 of the <XREF LINKEND="std.S390X.ABI">.
</PARA>

<SECT2 ID="elfspecial">
<TITLE>Special Sections</TITLE>
<PARA>
The following sections are defined in the <XREF LINKEND="std.S390X.ABI">.
include(elfsect.sgml)
</PARA>
</SECT2>
<SECT2 ID="linuxspecial">
<TITLE>Linux Special Sections</TITLE>
<PARA>
The following Linux S/390 specific sections are defined here.
include(linuxsect.sgml)
</PARA>
</SECT2>


</SECT1>


<SECT1 ID=symboltable>
<TITLE>Symbol Table</TITLE>

<PARA>
LSB-conforming applications shall use the Symbol Table as defined in
Chapter 2 of the <XREF LINKEND="std.S390X.ABI">.
</PARA>

</SECT1>

<SECT1 ID=relocation>
<TITLE>Relocation</TITLE>

<PARA>
LSB-conforming applications shall use Relocations as defined in
Chapter 2 of the <XREF LINKEND="std.S390X.ABI">.
</PARA>

<SECT2 ID="relocationtypes">
<TITLE>Relocation Types</TITLE>
<PARA>
See chapter 2 of the <XREF LINKEND="std.S390X.ABI">.
</PARA>
</SECT2>

</SECT1>

</CHAPTER>
