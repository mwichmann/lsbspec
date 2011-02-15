&preface;

<PART ID="TOCINTRO">
<TITLE>Introductory Elements</TITLE>
<CHAPTER ID="scope">
<TITLE>Scope</TITLE>
<PARA>
The LSB Desktop module defines components found on an LSB
conforming system.
</PARA>
</CHAPTER>

<CHAPTER ID="normativerefs">
<TITLE>References</TITLE>
<SECT1 ID="normativerefssect">
<TITLE>Normative References</TITLE>
<!-- the ID below is for auto generated xrefs to the LSB itself -->
<PARA ID=STD.LSB XREFLABEL="This Specification">
The specifications listed below are referenced in whole or in part by
the LSB Desktop specification.  Such references may be normative or
informative; a reference to specification shall only be considered
normative if it is explicitly cited as such.  The LSB Desktop specification
may make normative references to a portion of these
specifications (that is, to define a specific function or group of
functions); in such cases, only the explicitly referenced portion of
the specification is to be considered normative.
</PARA>
<TABLE>
<TITLE>Normative References</TITLE>
<TGROUP COLS=2>
m4_include(standards.sgml)
</TGROUP>
</TABLE>
</SECT1>
<SECT1 ID="informativerefs">
<TITLE>Informative References/Bibliography</TITLE>
<PARA>
In addition, the specifications listed below provide essential background information
to implementors of this specification. These references are included for information
only.
</PARA>
<TABLE>
<TITLE>Other References</TITLE>
<TGROUP COLS=3>
m4_include(`references.sgml')
</TGROUP>
</TABLE>
</SECT1>
</CHAPTER>

<CHAPTER ID="REQUIREMENTS">
<TITLE>Requirements</TITLE>
<SECT1 ID="rlibraries">
<TITLE>Relevant Libraries</TITLE>
<PARA>
The libraries listed in <XREF LINKEND='tbl-desktop-stdlib'> shall
be available on a Linux Standard Base - Desktop system, with the specified
runtime names.  This list may be supplemented or amended by the
architecture-specific specification.
</PARA>
<TABLE ID=tbl-desktop-stdlib>
<TITLE>Standard Library Names</TITLE>
<TGROUP COLS=2>
<THEAD>
<ROW>
<ENTRY>Library</ENTRY>
<ENTRY>Runtime Name</ENTRY>
</ROW>
</THEAD>
m4_include(libraries.sgml)
</TGROUP>
</TABLE>
<PARA>
These libraries will be in an implementation-defined directory which
the dynamic linker shall search by default.
</PARA>
</SECT1>

</CHAPTER>

<!-- boilerplate terms and definitions -->
&definitions

</PART>
