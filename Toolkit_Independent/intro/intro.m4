<PREFACE id="OVERVIEW">
<TITLE>Foreword</TITLE>
<PARA>
This is version &specversion; of the LSB_Toolkit_Independent Module
Specification.  This version is a preliminary version for review
only. Conclusion of work on this version will result in version
&targetversion; of the LSB_Toolkit_Independent Module Specification.
</PARA>
<PARA>
Implmentations may not claim conformance to this version.
<!--
An implementation of this version of the specification may not claim
to be an implementation of LSB_Toolkit_Independent Module unless it has 
successfully completed the compliance process as defined by the 
Linux Foundation.
-->
</PARA>
</PREFACE>

<PREFACE ID="INTRO"><TITLE>Introduction</TITLE>
<PARA>
The LSB_Toolkit_Independent Module defines certain required elements of
a desktop environment that are independent of programming toolkits.
Conforming systems must implement these elements.
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
LSB Toolkit_Independent desktop-related elements found on an LSB conforming
system.
</PARA>
</CHAPTER>

<CHAPTER ID="normativerefs">
<TITLE>References</TITLE>
<SECT1 ID="normativerefssect">
<TITLE>Normative References</TITLE>
<!-- the ID below is for auto generated xrefs to the LSB itself -->
<PARA ID=STD.LSB XREFLABEL="This Specification">
The specifications listed below are referenced in whole or in part by
the LSB Toolkit_Independent Module Standard.  Such references may be
normative or informative; a reference to a specification shall only
be considered normative if it is explicitly cited as such.  The LSB
Toolkit_Independent Module may make normative references to a portion
of these specifications (that is, to define a specific function or group
of functions); in such cases, only the explicitly referenced portion of
the specification is to be considered normative.
</PARA>
<TABLE>
<TITLE>Normative References</TITLE>
<TGROUP COLS=2>
<!-- dontinclude (standards.sgml) -->
<!-- if no table, use this: -->
<THEAD>
<ROW><ENTRY>Name</ENTRY><ENTRY>Title</ENTRY><ENTRY>URL</ENTRY></ROW>
</THEAD>
<TBODY>
<ROW><ENTRY>none</ENTRY></ROW>
</TBODY>
</TGROUP>
<!-- end no-table section -->
</TABLE>
</SECT1>
<SECT1 ID="informativerefssect">
<TITLE>Informative References/Bibliography</TITLE>
<PARA>
In addition, the specifications listed below provide essential background
information to implementors of this specification. These references are
included for information only.
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
<SECT1 ID="xdgcommands">
<TITLE>Files and Utilities</TITLE>
<PARA>
The implementation shall provide all files and utilities specified as
part of this document in the format defined here and in other referenced
documents. All commands and utilities shall behave as required by this
document. The implementation shall also provide all mandatory components
of an application's runtime environment that are included or referenced
in this document.
</PARA>
</SECT1>
</CHAPTER>

<!-- boilerplate terms and definitions -->
&definitions

</PART>
