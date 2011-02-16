<PREFACE id="OVERVIEW">
<title>Foreword</title>
<para>
This is version &specversion; of the Trial Use Specification.
<!--
This version is a preliminary version for review only. Conclusion of work on
this version will result in version 4.1 of the Trial Use Specification.
-->
This specification augments the series of volumes released under 
the collective title <citetitle>Linux Standard Base</citetitle>:
</para>
<itemizedlist>
<listitem><para>Core</para></listitem>
<listitem><para>C++</para></listitem>
<listitem><para>Desktop</para></listitem>
<listitem><para>Languages</para></listitem>
<listitem><para>Printing</para></listitem>
</itemizedlist>
<para>
Note that the Core, C++ and Desktop volumes consist of a generic volume augmented by an architecture-specific volume.
</para>
<PARA>
This document describes components which have Trial Use Specification
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
</preface>
<preface id="status">
<title>Status of this Document</title>
<para>
This document is a complement to the released specification. Other documents may
supersede or augment this document. A list of current
Linux Standard Base (LSB) specifications is available at 
<ulink url="http://refspecs.linuxfoundation.org/">http://refspecs.linuxfoundation.org</ulink>.
</para>
<para>If you wish to make comments regarding this document
in a manner that is tracked by the LSB project, please submit them
using our public bug database at 
<ulink url="http://bugs.linuxbase.org">http://bugs.linuxbase.org</ulink>.
Please enter your feedback, carefully indicating the title of the
section for which you are submitting feedback, and the volume and
version of the specification where you found the problem, quoting
the incorrect text if appropriate. If you are suggesting a new feature,
please indicate what the problem you are trying to solve is. That is
more important than the solution, in fact.  </para>
<para>
If you do not have or wish to create a bug database account then you 
can also e-mail feedback to
<email>lsb-discuss@lists.linuxfoundation.org</email> (<ulink
url="http://lists.linux-foundation.org/mailman/listinfo/lsb-discuss">
subscribe</ulink>, <ulink
url="http://lists.linux-foundation.org/pipermail/lsb-discuss/">
archives</ulink>), and arrangements will be made to transpose the
comments to our public bug database.  </para>
</preface>

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
<!-- XXX -->
<PARA>
As of version &specversion; there are no specified elements in &spectitle;.
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
<!-- no references in 4.1
<TABLE>
<TITLE>Informative References</TITLE>
<TGROUP COLS=2>
m4_dnl m4_include(references.sgml)
</TGROUP>
</TABLE>
-->
</CHAPTER>

<CHAPTER ID="REQUIREMENTS">
<TITLE>Requirements</TITLE>

<PARA>None as of this version.</PARA>

<!-- promoted to full standard
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
#m4_include(libraries.sgml)
</TGROUP>
</TABLE>
<PARA>
These libraries will be in an implementation-defined directory which
the dynamic linker shall search by default.
</PARA>
</SECT1>
-->

<!-- promoted to full standard
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
#m4_include(slibraries.sgml)
</TGROUP>
</TABLE>
<PARA>
These libraries will be in an implementation-defined directory which
the dynamic linker shall search by default.
</PARA>
</SECT1>
-->

</CHAPTER>

<!-- boilerplate terms and definitions -->
&definitions;

</PART>
