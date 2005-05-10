<PART ID="tocobjformat">
<TITLE>Object Format</TITLE>
<CHAPTER ID=objfmtintro>
<TITLE>Introduction</TITLE>
<PARA>
LSB-conforming implementations shall support an object file format, called
Executable and Linking Format (ELF) as defined by the
<XREF LINKEND="std.gABI41"> , <XREF LINKEND="std.ABIUpdate"> ,
<XREF LINKEND="std.x86.64.ABI"> and as supplemented by the
generic LSB specification and
<XREF LINKEND="std.LSB">.
</PARA>
</CHAPTER>

<CHAPTER ID=elfheader>
<TITLE>ELF Header</TITLE>
<SECT1 ID="machineinfo">
<TITLE>Machine Information</TITLE>
<PARA>
LSB-conforming applications shall use the Machine Information as defined in
Chapter 4 of the 
<XREF LINKEND="std.x86.64.ABI">.
</PARA>
<SECT2 ID="mifileclass">
<TITLE>File Class</TITLE>
<PARA>
See Chapter 4 of <XREF LINKEND="std.X86.64.ABI">.
</PARA>
</SECT2>
<SECT2 ID="midataencoding">
<TITLE>Data Encoding</TITLE>
<PARA>
See Chapter 4 of <XREF LINKEND="std.X86.64.ABI">.
</PARA>
</SECT2>
<SECT2 ID="miosidentification">
<TITLE>OS Identification</TITLE>
<PARA>
See Chapter 4 of <XREF LINKEND="std.X86.64.ABI">.
</PARA>
</SECT2>
<SECT2 ID="miprocessorident">
<TITLE>Processor Identification</TITLE>
<PARA>
See Chapter 4 of <XREF LINKEND="std.X86.64.ABI">.
</PARA>
</SECT2>
<SECT2 ID="miprocessorspecialflags">
<TITLE>Processor Specific Flags</TITLE>
<PARA>
See Chapter 4 of <XREF LINKEND="std.X86.64.ABI">.
</PARA>
</SECT2>
</SECT1>
</CHAPTER>

<CHAPTER ID=sections>
<TITLE>Sections</TITLE>
<PARA>
See Chapter 4 of <XREF LINKEND="std.X86.64.ABI">.
</PARA>
<SECT1 ID="specialsections">
<TITLE>Special Sections</TITLE>
<PARA>
See Chapter 4 of <XREF LINKEND="std.X86.64.ABI">.
The following sections are defined in the <XREF LINKEND="std.x86.64.ABI">.
include(elfsect.sgml)
</PARA>
</SECT1>
<SECT1 ID="linuxspecial">
<TITLE>Additional Special Sections</TITLE>
<PARA>
See Chapter 4 of <XREF LINKEND="std.X86.64.ABI">.
The following additional sections are defined here.
include(linuxsect.sgml)
</PARA>
</SECT1>

</CHAPTER>

<CHAPTER ID=symboltable>
<TITLE>Symbol Table</TITLE>

<PARA>
See Chapter 4 of <XREF LINKEND="std.X86.64.ABI">.
LSB-conforming applications shall use the Symbol Table as defined in
Chapter 4 of the <XREF LINKEND="std.x86.64.ABI">.
</PARA>

</CHAPTER>

<CHAPTER ID=relocation>
<TITLE>Relocation</TITLE>

<PARA>
See Chapter 4 of <XREF LINKEND="std.X86.64.ABI">.
LSB-conforming applications shall use Relocations as defined in
Chapter 4 of the <XREF LINKEND="std.x86.64.ABI">.
</PARA>

<SECT1 ID="relocationtypes">
<TITLE>Relocation Types</TITLE>
<PARA>
See Chapter 4 of <XREF LINKEND="std.X86.64.ABI">.
</PARA>
</SECT1>

</CHAPTER>

</PART>
