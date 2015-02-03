<PREFACE id="OVERVIEW">
<TITLE>Foreword</TITLE>
<para>
This is version &specversion; of the LSB-TUM Module Specification.
This version is a preliminary version for review only. Conclusion of work on
this version will result in version &targetversion; of the LSB-TUM 
Module Specification.
</PARA>
<PARA>
This module describes components which have Trial Use Specification
status, and as such there is no formal compliance process for
this module. Implmentations may claim to implement the module
in a manner that agrees with this specification,
but such a claim is not part of a conformance statement for
the LSB version in which this module appears.
</PARA>
<PARA>
Applications may not assume that the components of this specification
are present or operate as described in this specification on any
given implementation.
</PARA>
</PREFACE>

<PREFACE ID="INTRO"><TITLE>Introduction</TITLE>
<PARA>
The LSB-TUM Module defines Trial-Use components which may or may 
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
The LSB TUM Module defines Trial Use components which do not
have their own module.  Such components would, if promoted to
full required specification status, be placed in existing
LSB modules.
</PARA>
</CHAPTER>

<CHAPTER ID="normativerefs">
<TITLE>Normative References</TITLE>
<!-- the ID below is for auto generated xrefs to the LSB itself -->
<PARA ID=STD.LSB XREFLABEL="This Specification">
The specifications listed below are referenced in whole or in part by
the LSB-TUM Module Standard.  Such references may be normative or
informative; a reference to specification shall only be considered
normative if it is explicitly cited as such.  The LSB-TUM Module
may make normative references to a portion of these
specifications (that is, to define a specific function or group of
functions); in such cases, only the explicitly referenced portion of
the specification is to be considered normative.
</PARA>
<!-- TABLE>
<TITLE>Informative References</TITLE>
<TGROUP COLS=2>
XXX Include table here when it exists (see intro.m4.saved)
XXX Docbook throws an error if the generated table is empty
</TGROUP>
</TABLE-->
</CHAPTER>

<!-- Are there Requirements for TUM? 
<CHAPTER ID="REQUIREMENTS">
<TITLE>Requirements</TITLE>

<PARA>
This specification describes a TUM interpreter which shall
be found in a specified location.  It also defines a number
of runtime modules which shall be in an implementation-defined
directory which the interpreter shall search by default.
</PARA>

</CHAPTER>
-->

<!-- boilerplate terms and definitions -->
&definitions;

</PART>
