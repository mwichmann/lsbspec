<PART ID="tocobjformat">
<TITLE>Object Format</TITLE>

<CHAPTER ID=objfmt>
<TITLE>Object Files</TITLE>
<PARA>
LSB-conforming implementations shall support an object file format, called
Executable and Linking Format (ELF) as defined by the Toolkit Interface
Standard (TIS) Executable and Linking Format (ELF) and as supplemented by
this document. Conforming implementations may also support other unspecified
object file formats.
</PARA>
</CHAPTER>

<CHAPTER ID=Sections>
<TITLE>Sections</TITLE>
<PARA>
</PARA>
<SECT1 ID="elftypes">
<TITLE>ELF Section Types</TITLE>
<PARA>
The following sections types are defined in the IA-32 ELF reference Specification.
<TABLE>
<TITLE>ELF Section Types</TITLE>
<TGROUP COLS=4>
include(elfsecttypes.sgml)
</TGROUP>
</TABLE>
</PARA>
</SECT1>
<SECT1 ID="linuxtypes">
<TITLE>Linux Section Types</TITLE>
<PARA>
The following Linux IA-32 section types are defined here.
<TABLE>
<TITLE>Linux Section Types</TITLE>
<TGROUP COLS=2>
include(linuxsecttypes.sgml)
</TGROUP>
</TABLE>
</PARA>
</SECT1>
</CHAPTER>

<CHAPTER ID=SpecialSections>
<TITLE>Special Sections</TITLE>
<PARA>
</PARA>
<SECT1 ID="elfspecial">
<TITLE>ELF Special Sections</TITLE>
<PARA>
The following sections are defined in the IA-32 ELF reference Specification.
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
