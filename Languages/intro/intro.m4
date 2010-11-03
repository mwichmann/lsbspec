<PREFACE id="OVERVIEW">
<TITLE>Foreword</TITLE>
<PARA>
This is version &specversion; of the LSB Languages specification.
This version is a preliminary version for review only. Conclusion of work on
this version will result in version 4.1 of the LSB Languages specification.
Implmentations may not claim conformance to this version.
</PARA>
<PARA>
An implementation of this version of the specification may not claim
to be an implementation of the LSB Languages specification unless it
has successfully completed the compliance process as defined by the
Linux Foundation.
</PARA>
</PREFACE>

<PREFACE ID="INTRO"><TITLE>Introduction</TITLE>
<PARA>
The LSB Languages specification defines the runtime language components that are
required to be present on a conforming system.
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

</CHAPTER>

&definitions;

m4_include(terms.sgml)

</PART>
