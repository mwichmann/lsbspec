<chapter id="tocobjformat">
<title>Object Format</title>

<sect1 id=objfmt>
<title>Object Files</title>
<para>
LSB-conforming implementations shall support the 
Executable and Linking Format (ELF) object file format as 
defined by the following documents:
<itemizedlist mark=bullet>
<listitem>
<para>
<xref linkend="std.gABI41">
</para>
</listitem>
<listitem>
<para>
<xref linkend="std.ABIupdate">
</para>
</listitem>
<listitem>
<para>
the relevant architecture specific ABI supplement.
</para>
</listitem>
<listitem>
<para>
this specification
</para>
</listitem>
<listitem>
<para>
the relevant architecture specific part of &ISOSTD;
</para>
</listitem>
</itemizedlist>
Conforming implementations may also support other unspecified object file formats.
</para>
</sect1>

<SECT1 ID=Sections>
<TITLE>Sections</TITLE>
<SECT2><TITLE>Introduction</TITLE>
<PARA>
As described in <xref linkend="std.gABI41">,
an ELF object file contains a number of <emphasis>sections</emphasis>.
</PARA>
</SECT2>
<SECT2 ID="elftypes">
<TITLE>Sections Types</TITLE>
<PARA>
The section header table is an array of 
<STRUCTNAME>Elf32_Shdr</STRUCTNAME> or 
<STRUCTNAME>Elf64_Shdr</STRUCTNAME> structures as 
described in <xref linkend="std.gABI41">. The 
<STRUCTFIELD>sh_type</STRUCTFIELD> member shall be either a value from
<xref linkend="tbl.ABIUpdate">, drawn from the System V 
ABI, or one of the additional values specified in <xref linkend="tbl.LSB">.
</PARA>
<PARA>
A section header's <STRUCTFIELD>sh_type</STRUCTFIELD> member specifies the sections's semantics.
</PARA>
<SECT3>
<TITLE>ELF Section Types</TITLE>
<PARA>
The following section types are defined in the 
<xref linkend="std.gABI41">
and the
<xref linkend="std.ABIupdate">.
m4_include(elfsecttypes.sgml)
</PARA>
</SECT3>
<SECT3>
<TITLE>Additional Section Types</TITLE>
<PARA>
The following additional section types are defined here.

m4_include(linuxsecttypes.sgml)
</PARA>
</SECT3>
</SECT2>
</SECT1>

<SECT1 ID=SpecialSections>
<TITLE>Special Sections</TITLE>
<SECT2 ID="elfspecial">
<TITLE>Special Sections</TITLE>
<PARA>
Various sections hold program and control information. Sections in the lists below are used by the system and have the indicated types and attributes.
</PARA>
<SECT3>
<TITLE>ELF Special Sections</TITLE>
<PARA>
The following sections are defined in the
<xref linkend="std.gABI41">
and the
<xref linkend="std.ABIupdate">.
m4_include(elfsect.sgml)
</PARA>
</SECT3>
<SECT3>
<TITLE>Additional Special Sections</TITLE>
<PARA>
Object files in an LSB conforming application may also contain one or more of 
the additional special sections described below.
m4_include(linuxsect.sgml)
</PARA>
</SECT3>
</SECT2>
</SECT1>

<SECT1 ID=Symmap>
<TITLE>Symbol Mapping</TITLE>
<SECT2><TITLE>Introduction</TITLE>
<PARA>
Symbols in a source program are translated by the compilation system into
symbols that exist in the object file. 
</PARA>
<SECT3>
<TITLE>C Language</TITLE>
<PARA>
External C symbols shall be unchanged in an object file's symbol table.
</PARA>
</SECT3>
</SECT2>
</SECT1>

<SECT1 ID="dwarfext">
<TITLE>DWARF Extensions</TITLE>
<PARA>
The LSB does not specify debugging information, however, some additional
sections contain information which is encoded using the the encoding as
specified by <xref linkend="std.DWARF4"> with extensions defined here.

</PARA>

m4_include(dwarfenc.sgml)

m4_include(dwarfext.sgml)

</SECT1>

<SECT1 ID="ehframechpt">
<TITLE>Exception Frames</TITLE>
<PARA>
When using languages that support exceptions, such as C++, additional
information must be provided to the runtime environment that describes
the call frames that must be unwound during the processing of an exception.
This information is contained in the special sections
<COMPUTEROUTPUT>.eh_frame</COMPUTEROUTPUT> and
<COMPUTEROUTPUT>.eh_framehdr</COMPUTEROUTPUT>.
<NOTE>
<PARA>
The format of the <COMPUTEROUTPUT>.eh_frame</COMPUTEROUTPUT> section is similar
in format and purpose to the <COMPUTEROUTPUT>.debug_frame</COMPUTEROUTPUT>
section which is specified in <xref linkend="std.DWARF4">.
Readers are advised that there are some subtle difference,
and care should be taken when comparing the two sections.
</PARA>
</NOTE>
</PARA>
m4_include(ehframe.sgml)

m4_include(ehframehdr.sgml)

</SECT1>

m4_include(symversion.sgml)

m4_include(abinote.sgml)
</CHAPTER>
