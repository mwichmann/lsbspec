<CHAPTER ID="tocobjformat">
<TITLE>Object Format</TITLE>

<SECT1 ID=objfmt>
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
this specification
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
the relevant architecture specific part of &ISOSTD;
</PARA>
</LISTITEM>
</ITEMIZEDLIST>
Conforming implementations may also support other unspecified object file formats.
</PARA>
</SECT1>

<SECT1 ID=Sections>
<TITLE>Sections</TITLE>
<SECT2><TITLE>Introduction</TITLE>
<PARA>
As described in <XREF LINKEND="std.gABI41">,
an ELF object file contains a number of <emphasis>sections</emphasis>.
</PARA>
</SECT2>
<SECT2 ID="elftypes">
<TITLE>Sections Types</TITLE>
<PARA>
The section header table is an array of 
<STRUCTNAME>Elf32_Shdr</STRUCTNAME> or 
<STRUCTNAME>Elf64_Shdr</STRUCTNAME> structures as 
described in <XREF LINKEND=STD.gABI41>. The 
<STRUCTFIELD>sh_type</STRUCTFIELD> member shall be either a value from
<XREF LINKEND=tbl.ABIUpdate>, drawn from the System V 
ABI, or one of the additional values specified in <XREF LINKEND=tbl.LSB>.
</PARA>
<PARA>
A section header's <STRUCTFIELD>sh_type</STRUCTFIELD> member specifies the sections's semantics.
</PARA>
<SECT3>
<TITLE>ELF Section Types</TITLE>
<PARA>
The following section types are defined in the 
<XREF LINKEND="std.gABI41">
and the
<XREF LINKEND="std.ABIupdate">.
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
<XREF LINKEND="std.gABI41">
and the
<XREF LINKEND="std.ABIupdate">.
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
specified by <XREF LINKEND="std.DWARF4"> with extensions defined here.

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
section which is specified in <XREF LINKEND="std.DWARF4">.
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
