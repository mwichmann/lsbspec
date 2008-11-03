<PREFACE id="OVERVIEW">
<TITLE>Foreword</TITLE>
<PARA>
This is version &specversion; of the Trial Use Specification.
This version is a preliminary version for review only. Conclusion of work on
this version will result in version 3.2 of the Trial Use Specification.
</PARA>
<PARA>
This specification describes components which have Trial Use Specification
status, and as such there is no formal compliance process for
this specification. Implementations may claim to provide these components
in a manner that agrees with this specification, but such a claim is not
part of a conformance statement for the LSB version in which this module
appears.
</PARA>
<PARA>
Applications may not assume that the components of this specification
are present or operate as described in this specification on any
given implementation. 
</PARA>
<!-- we don't use this in modules
<PARA>
An implementation of this version of the specification may not claim
to be an implementation of LSB-TrialUse Specification unless it has successfully
completed the compliance process as defined by the Linux Foundation.
</PARA>
-->
</PREFACE>

<PREFACE ID="INTRO"><TITLE>Introduction</TITLE>
<PARA>
The Trial Use Specification describes components which may or
may not be present on an otherwise conforming system. The
purpose is to indicate that these components are on a Standards
Track, that is, they are intended to become part of the LSB
Specification in a future edition.
</PARA>

<PARA>
This document should be used in conjunction with the documents it references.
Information referenced in this way is as much a part of this document as is
the information explicitly included here.
</PARA>
</PREFACE>

<PART ID="TOCINTRO">
<TITLE>Introductory Elements</TITLE>
<CHAPTER ID="scope">
<TITLE>Scope</TITLE>
<PARA>
The Trial Use Specification defines components which are not
required parts of the LSB Specification.
</PARA>
</CHAPTER>

<CHAPTER ID="normativerefs">
<TITLE>Normative References</TITLE>
<!-- the ID below is for auto generated xrefs to the LSB itself -->
<PARA ID=STD.LSB XREFLABEL="This Specification">
The specifications listed below are referenced in whole or in part by
the Trial Use Specification.  Such references may be normative or
informative; a reference to specification shall only be considered
normative if it is explicitly cited as such.  The Trial Use
Specification may make normative references to a portion of these
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
<SECT1 ID="alsalibraries">
<TITLE>Multimedia Libraries</TITLE>
<PARA>
The multimedia libraries listed in <XREF LINKEND='tbl-alsa-stdlib'> shall
be available on a Linux Standard Base system, with the specified
runtime names.  This list may be supplemented or amended by the
architecture-specific specification.
</PARA>
<TABLE ID=tbl-alsa-stdlib>
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

<SECT1 ID="nsslibraries">
<TITLE>Security Libraries</TITLE>
<PARA>
The security libraries listed in <XREF LINKEND='tbl-nss-stdlib'> shall
be available on a Linux Standard Base system, with the specified
runtime names.  This list may be supplemented or amended by the
architecture-specific specification.
</PARA>
<TABLE ID=tbl-nss-stdlib>
<TITLE>Standard Library Names</TITLE>
<TGROUP COLS=2>
<THEAD>
<ROW>
<ENTRY>Library</ENTRY>
<ENTRY>Runtime Name</ENTRY>
</ROW>
</THEAD>
m4_include(slibraries.sgml)
</TGROUP>
</TABLE>
<PARA>
These libraries will be in an implementation-defined directory which
the dynamic linker shall search by default.
</PARA>
</SECT1>

</CHAPTER>

&definitions;

m4_include(terms.sgml)

</PART>
