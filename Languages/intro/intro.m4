&preface;

<PART ID="TOCINTRO">
<TITLE>Introductory Elements</TITLE>
<CHAPTER ID="scope">
<TITLE>Scope</TITLE>
<PARA>
The LSB Languages specification defines components for runtime languages
which are found on an LSB conforming system.
</PARA>
</CHAPTER>

<CHAPTER ID="normativerefs">
<TITLE>Normative References</TITLE>
<!-- the ID below is for auto generated xrefs to the LSB itself -->
<PARA ID=STD.LSB XREFLABEL="This Specification">
The specifications listed below are referenced in whole or in part by
the LSB Languages specification.  Such references may be normative or
informative; a reference to specification shall only be considered
normative if it is explicitly cited as such.  The LSB Languages
specification may make normative references to a portion of these
specifications (that is, to define a specific function or group of
functions); in such cases, only the explicitly referenced portion of
the specification is to be considered normative.
</PARA>
<TABLE>
<TITLE>Informative References</TITLE>
<TGROUP COLS=2>
m4_include(references.sgml)
</TGROUP>
</TABLE>
</CHAPTER>

<CHAPTER ID="REQUIREMENTS">
<TITLE>Requirements</TITLE>

<PARA>
This specification describes runtime language interpreters which shall
be found in specified locations.  It also defines a number
of runtime modules which shall be in an implementation-defined
directory which the interpreters shall search by default.
</PARA>

<SECT1 ID="rlibraries">
<TITLE>Relevant Libraries</TITLE>
<PARA>
The libraries listed in <XREF LINKEND='tbl-lib-languages'> shall
be available on a Linux Standard Base system, with the specified
runtime names.  This list may be supplemented or amended by the
architecture-specific specification.
</PARA>
<TABLE ID=tbl-lib-languages>
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
&definitions;

</PART>
