<PART ID="tocobjformat">
<TITLE>Object Format</TITLE>
<PARTINTRO>
<PARA>
LSB-conforming implementations shall support an object file format, called
Executable and Linking Format (ELF) as defined by the System V Application
Binary Interface, Edition 4.1, the System V Application Binary Interface -
DRAFT - April 29, 1998, System V Application Binary Interface - Intel386
Architecture Processor Supplement and as supplemented by the Linux Standard
Base Specification and this document.
</PARA>
</PARTINTRO>

<CHAPTER ID=elfheader>
<TITLE>ELF Header</TITLE>
<SECT1 ID="machineinfo">
<TITLE>Machine Information</TITLE>
<PARA>
</PARA>
<SECT2 ID="mifileclass">
<TITLE>File Class</TITLE>
<PARA>
</PARA>
</SECT2>
<SECT2 ID="midataencoding">
<TITLE>Data Encoding</TITLE>
<PARA>
</PARA>
</SECT2>
<SECT2 ID="miosidentification">
<TITLE>OS Identification</TITLE>
<PARA>
</PARA>
</SECT2>
<SECT2 ID="miprocessorident">
<TITLE>Processor Identification</TITLE>
<PARA>
</PARA>
</SECT2>
<SECT2 ID="miprocessorspecialflags">
<TITLE>Processor Specific Flags</TITLE>
<PARA>
</PARA>
</SECT2>
</SECT1>
</CHAPTER>

<CHAPTER ID=sections>
<TITLE>Sections</TITLE>
<PARA>
</PARA>
<SECT1 ID="specialsections">
<TITLE>Special Sections</TITLE>
<PARA>
The following sections are defined in the System V Application Binary
Interface - Intel386 Architecture Processor Supplement.
<TABLE>
<TITLE>ELF Special Sections</TITLE>
<TGROUP COLS=4>
include(elfsect.sgml)
</TGROUP>
</TABLE>
</PARA>
</SECT1>
<SECT1 ID="linuxspecial">
<TITLE>Linux Special Sections</TITLE>
<PARA>
The following Linux IA-32 specific sections are defined here.
<TABLE>
<TITLE>Linux Special Sections</TITLE>
<TGROUP COLS=2>
include(linuxsect.sgml)
</TGROUP>
</TABLE>
</PARA>
</SECT1>

<SECT1 ID="sectiontypes">
<TITLE>Section Types</TITLE>
<PARA>
</PARA>
</SECT1>

<SECT1 ID="sectionattribflags">
<TITLE>Section Attribute Flags</TITLE>
<PARA>
</PARA>
</SECT1>

<SECT1 ID="specialsectiontypes">
<TITLE>Special Section Types</TITLE>
<PARA>
</PARA>
</SECT1>

</CHAPTER>

<CHAPTER ID=symboltable>
<TITLE>Symbol Table</TITLE>

<PARA>
</PARA>

</CHAPTER>

<CHAPTER ID=relocation>
<TITLE>Relocation</TITLE>

<SECT1 ID="relocationtypes">
<TITLE>Relocation Types</TITLE>
<PARA>
</PARA>
</SECT1>

</CHAPTER>

</PART>
