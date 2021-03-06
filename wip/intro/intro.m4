<PART ID="tocintro">
<TITLE>Introduction</TITLE>

<CHAPTER id=Introduction>
<TITLE>Introduction</TITLE>
<SECT1 ID="overview">
<TITLE>Introduction</TITLE>
<PARA>
This is the Linux Standard Base &specversion;.
An implementation of anything in this document may not claim
to be an implementation of the Linux Standard Base until such time as the
feature moves into the Linux Standard Base Specification.
</PARA>
</SECT1>

<SECT1 ID="overpurp">
<TITLE>Purpose</TITLE>
<PARA>
The Linux Standard Base (LSB) defines a system interface for compiled
applications and a minimal environment for support of installation scripts.
Its purpose is to enable a uniform industry standard environment for
high-volume applications conforming to the LSB.
</PARA>
<PARA>
The LSB defines a binary interface for application programs that are compiled
and packaged for LSB-conforming implementations on many different hardware
architectures. Since a binary specification must include information specific
to the computer processor architecture for which it is intended, it is not
possible for a single document to specify the interface for all possible
LSB-conforming implementations. Therefore, the LSB is a family of
specifications, rather than a single one.
</PARA>
<PARA>
The LSB is composed of two basic parts: a common part
describing those parts of the interface that
remain constant across all implementations of the LSB, and an
architecture-specific part describing the
parts of the interface that vary by processor architecture.
Together, the common part and the relevant
architecture-specific part for a single hardware architecture provide a
complete interface specification for compiled application programs on systems
that share a common hardware architecture.
</PARA>
<PARA>
This document is the generic part. It must be used in conjunction with an
architecture-specific part. Whenever a section of this specification
must be supplemented by architecture-specific information, this document
includes a reference to the architecturespecific part. Architecture 
specific parts
may also contain additional information that is not referenced here.
</PARA>
<PARA>
This document should be used in conjunction with the documents it references.
This document enumerates the system components it includes, but descriptions of
those components may be included entirely or partly in this document, partly in
other documents, or entirely in other reference documents. For example, the
section that describes system service routines includes a list of the system
routines supported in this interface, formal declarations of the data
structures they use that are visible to applications, and a pointer to the
underlying referenced specification for information about the syntax and
semantics of each call. Only those routines not described in standards
referenced by this document, or extensions to those standards, are described in
the detail. Information referenced in this way is as much a part of this
document as is the information explicitly included here.
</PARA>
</SECT1>

<SECT1 ID="rstandards">
<TITLE>Related Standards</TITLE>
<PARA>
The specifications listed below are referenced in whole or in part by
the Linux Standard Base.  When a specification is referenced in a way
that imposes a requirement (for example, "foo must behave as specified
in the XyzzySpec"), then the relevant requirements of that
specification apply as if they were part of the LSB itself.  However,
if the LSB refers to a specification without imposing a requirement,
then it is merely a reference and does not add additional requirements.
The LSB may refer to a portion of a specification (for example,
to define a specific function or group of functions); in such cases,
only the explicitly referenced portion of the specification applies.
</PARA>
<TABLE>
<TITLE>Related Standards</TITLE>
<TGROUP COLS=2>
m4_include(standards.sgml)
</TGROUP>
</TABLE>
</SECT1>

<SECT1 ID="rlibraries">
<TITLE>Relevant Libraries</TITLE>
<PARA>
The libraries listed here shall be available on a Linux Standard Base 
system. This list may be supplemented or amended by the architecture-specific 
specifications.
</PARA>
<TABLE>
<TITLE>Standard Libraries Names</TITLE>
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
<TABLE>
<TITLE>Standard Library Names defined in the Architecture Specific Supplement</TITLE>
<TGROUP COLS=2>
<THEAD>
<ROW>
<ENTRY>Library</ENTRY>
<ENTRY>Runtime Name</ENTRY>
</ROW>
</THEAD>
m4_include(pslibs.sgml)
</TGROUP>
</TABLE>
<PARA>
These libraries will be in an implementation-dependent directory which
the dynamic linker will search by default.
</PARA>
</SECT1>

<SECT1 ID="howto">
<TITLE>How to Use this Standard</TITLE>
<PARA>
The complete LSB specification is composed of this generic LSB specification 
and the supplemental processor-specific specification for a particular 
processor architecture. These two documents constitute a specification that 
should be used in conjunction with the publicly-available standards documents 
it references. The LSB enumerates the system components it includes, but 
descriptions of those components may be included entirely in the LSB, partly 
in the LSB and partly in other documents, or entirely in other reference 
documents.
</PARA>
</SECT1>

</CHAPTER>
</PART>
