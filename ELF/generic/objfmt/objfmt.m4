<PART ID="tocobjformat">
<TITLE>Object Format</TITLE>

<CHAPTER ID=objfmt>
<TITLE>Object Files</TITLE>
<PARA>
LSB-conforming implementations shall support the object file Executable and Linking Format (ELF), which is defined by the following documents:
<ITEMIZEDLIST MARK=BULLET>
<LISTITEM>
<PARA>
<XREF LINKEND="std.gABI41">
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
<XREF LINKEND="std.ABIupdate">
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
this document
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
an architecture-specific LSB specification
</PARA>
</LISTITEM>
</ITEMIZEDLIST>
Conforming implementations may also support other unspecified object file formats.
</PARA>
</CHAPTER>

<CHAPTER ID=Sections>
<TITLE>Sections</TITLE>
<PARA>
</PARA>
<SECT1 ID="elftypes">
<TITLE>Sections Types</TITLE>
<PARA>
A section header's <COMPUTEROUTPUT>sh_type</COMPUTEROUTPUT> member specifies the sections's semantics.
</PARA>
<SECT2>
<TITLE>ELF Section Types</TITLE>
<PARA>
The following section types are defined in the System V Application Binary
Interface, Edition 4.1.
include(elfsecttypes.sgml)
</PARA>
</SECT2>
<SECT2>
<TITLE>Additional Section Types</TITLE>
<PARA>
The following additional section types are defined here.

include(linuxsecttypes.sgml)
</PARA>
</SECT2>
</SECT1>
</CHAPTER>

<CHAPTER ID=SpecialSections>
<TITLE>Special Sections</TITLE>
<SECT1 ID="elfspecial">
<TITLE>Special Sections</TITLE>
<PARA>
Various sections hold program and control information. Sections in the lists below are used by the system and have the indicated types and attributes.
</PARA>
<SECT2>
<TITLE>ELF Special Sections</TITLE>
<PARA>
The following sections are defined in the
<XREF LINKEND="std.gABI41">
include(elfsect.sgml)
</PARA>
</SECT2>
<SECT2>
<TITLE>Additional Special Sections</TITLE>
<PARA>
The following additional sections are defined here.
include(linuxsect.sgml)
</PARA>
</SECT2>
</SECT1>
</CHAPTER>

<CHAPTER ID=Symmap>
<TITLE>Symbol Mapping</TITLE>
<PARA>
This chapter defines how names are mapped from the source symbol to
the object symbol.
</PARA>
<SECT1 ID="symmapping">
<TITLE>Symbol Mapping</TITLE>
<PARA>
Symbols in a source program are translated by the compilation system into
symbols that exist in the object file. The rules for this translation are
defined here.
</PARA>
<SECT2>
<TITLE>C Language</TITLE>
<PARA>
External C symbols have the same names in C and object files' symbol tables.
</PARA>
</SECT2>
<SECT2>
<TITLE>C++ Language</TITLE>
<PARA>
External C++ symbol names are created according to the Extenal Names rules in
<XREF LINKEND="std.CXXABI">. These rules are often referred to as name mangling.
</PARA>
</SECT2>
</SECT1>
</CHAPTER>

include(dwarfext.sgml)

include(ehframehdr.sgml)

include(symversion.sgml)

include(abinote.sgml)
</PART>
