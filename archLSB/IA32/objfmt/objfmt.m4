<PART ID="tocobjformat">
<TITLE>Object Format</TITLE>

<CHAPTER ID=objfmt>
<TITLE>Object Files</TITLE>
<PARA>
LSB-conforming implementations shall support an object file format, called
Executable and Linking Format (ELF) as defined by the System V Application
Binary Interface, Edition 4.1, the System V Application Binary Interface -
DRAFT - April 29, 1998, System V Application Binary Interface - Intel386
Architecture Processor Supplement and as supplemented by the Linux Standard
Base Specification and this document.
</PARA>
</CHAPTER>

<CHAPTER ID=SpecialSections>
<TITLE>Special Sections</TITLE>
<PARA>
</PARA>
<SECT1 ID="elfspecial">
<TITLE>ELF Special Sections</TITLE>
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
</CHAPTER>

</PART>
