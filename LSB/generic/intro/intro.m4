<PART ID="tocintro">
<TITLE>Introduction</TITLE>

<CHAPTER id=Introduction>
<TITLE>Introduction</TITLE>
<SECT1 ID="overview">
<TITLE>Introduction</TITLE>
<PARA>
This is version &specversion of the Linux Standard Base Specification. This 
version is a mostly complete framework of the specification, but many details 
are still not filled in. 
</PARA>
<PARA>
Those wishing to implement this standard should treat this version as more of
a roadmap of where the standard will be going rather than a complete
specification of the Linux Standard Base.
</PARA>
<PARA>
An implementation of this version of the specification may not claim
to be an implementation of the Linux Standard Base.
</PARA>
</SECT1>

<SECT1 ID="overpurp">
<TITLE>Purpose</TITLE>
<PARA>
The Linux Standard Base (LSB) defines a system interface for compiled applications and a minimal environment for support of installation scripts. Its purpose is to enable a uniform industry standard environment for high-volume applications conforming to the LSB.
</PARA>
<PARA>
The LSB defines a binary interface for application programs that are compiled and packaged for LSB-conforming implementations on many different hardware architectures. Since a binary specification must include information specific to the computer processor architecture for which it is intended, it is not possible for a single document to specify the interface for all possible LSB-conforming implementations. Therefore, the LSB is a family of specifications, rather than a single one.
</PARA>
<PARA>
The LSB is composed of two basic parts: A generic part of the specification describes those parts of the interface that remain constant across all hardware implementations of the LSB, and a processor-specific part of the specification describes the parts of the specification that are specific to a particular processor architecture. Together, the generic LSB and the processor-specific supplement for a single hardware architecture provide a complete interface specification for compiled application programs on systems that share a common hardware architecture.
</PARA>
<PARA>
This document is the generic LSB. It must be used in conjunction with a processor-specific supplement. Whenever a section of this specification must be supplemented by processor-specific information, this document includes a reference to the processor supplement. Processor supplements may also contain additional information that is not referenced here.
</PARA>
<PARA>
This document should be used in conjunction with the documents it references. This document enumerates the system components it includes, but descriptions of those components may be included entirely or partly in this document, partly in other documents, or entirely in other reference documents. For example, the section that describes system service routines includes a list of the system routines supported in this interface, formal declarations of the data structures they use that are visible to applications, and a pointer to the underlying referenced specification for information about the syntax and semantics of each call. Only those routines not described in standards referenced by this document, or extensions to those standards, are described in the detail. Information referenced in this way is as much a part of this document as is the information explicitly included here.
</PARA>
</SECT1>

<SECT1 ID="structure">
<TITLE>Structure of the Linux Standard Base</TITLE>
<PARA>
The Linux Standard Base (LSB) is composed of a common specification (this
document), and a set of architecture specific specifications that contain
information that is unique to a given architecture. The goal of the LSB is to
keep as much information as possible in the common specification. Due to the
need to maintain compatibility with other operating systems on some
architectures, some system information varies across the architectures. These
differences are identified in the architecture specific specifications.
</PARA>
<PARA>
The Linux Standard Base is built on several other specifications which are
listed later. Those specifications, or portions thereof, are included by
reference into the LSB. The LSB attempts to avoid duplication of information
contained in other specification, but may modify or supplement the other
specification as needed.
</PARA>
</SECT1>

<SECT1 ID="rstandards">
<TITLE>Related Standards</TITLE>
<PARA>
The specification listed here, and referenced in whole or in part by
the Linux Standard Base.
</PARA>
<TABLE>
<TITLE>Related Standards</TITLE>
<TGROUP COLS=3>
include(standards.sgml)
</TGROUP>
</TABLE>
</SECT1>

<SECT1 ID="rimplementations">
<TITLE>Related Implementations</TITLE>
<PARA>
The implementations listed here are referenced in whole or in part by the
Linux Standard Base when no formal specification is available.
</PARA>
<TABLE>
<TITLE>Related Implementations</TITLE>
<TGROUP COLS=3>
include(refimpls.sgml)
</TGROUP>
</TABLE>
</SECT1>

<SECT1 ID="rlibraries">
<TITLE>Relevant Libraries</TITLE>
<PARA>
The Libraries listed here are available on a Linux Standard Base conforming
system. This list may be supplemented or ameneded by the architecture specific 
specifications.
</PARA>
<TABLE>
<TITLE>Relevant Libraries</TITLE>
<TGROUP COLS=2>
<THEAD>
<ROW>
<ENTRY>Library</ENTRY>
<ENTRY>Runtime Name</ENTRY>
</ROW>
</THEAD>
include(libraries.sgml)
</TGROUP>
</TABLE>
<PARA>
These libraries will be in a default location found by the dynamic linker.
</PARA>
</SECT1>

<SECT1 ID="howto">
<TITLE>How to Use this Standard</TITLE>
<PARA>
The complete LSB specification is composed of this generic LSB specification and the supplemental processor-specific specification for a particular processor architecture. These two documents constitute a specification that should be used in conjunction with the publicly-available standards documents it references. The LSB enumerates the system components it includes, but descriptions of those components may be included entirely in the LSB, partly in the LSB and partly in other documents, or entirely in other reference documents.
</PARA>
<PARA>
Application programmers who wish to produce binary packages that will install and run on any LSB-conforming implementation should follow this procedure:
</PARA>
<PARA>
1. Write programs using the referenced programming interfaces defined in Reference Standards, or as modified by the LSB specification. Routines guaranteed to be present on all LSB-conforming implementations as dynamically-linkable resources are listed below. 
</PARA>
<NOTE>
<PARA>
Need to enumerate the rest of the procedure.
</PARA>
</NOTE>
</SECT1>

<SECT1 ID="defns">
<TITLE>Definitions</TITLE>
<NOTE>
<PARA>
The Application Binary  Interface (ABI) defined the following terms. We
probably want to have something similar here. ABI, generic ABI, processor
specific ABI, ABI-conforming system, ABI-conforming program, ABI-nonconforming
program, undefined behavior, unspecified property.
</PARA>
</NOTE>
<VARIABLELIST>
<VARLISTENTRY>
<TERM>
LSB
</TERM>
<LISTITEM>
<PARA>
This document.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM>
LSB-Compliant Application
</TERM>
<LISTITEM>
<PARA>
An application written to include only the system routines, commands,
and other resources included in this document, and that has been compiled
into an executable file that has the formats and characteristics specified
for such files in this document, and whose behavior complies, installs,
and is executed in the environment with the rules given in this document.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM>
LSB-Conforming Implementation
</TERM>
<LISTITEM>
<PARA>
An implementation that provides the binary system interface for
applications described in this document.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM>
Non-LSB-Compliant Application
</TERM>
<LISTITEM>
<PARA>
An application which has been written to include system routines,
commands, or other resources not included in this document, or which
has been compiled into a format different from those specified here,
or which does not behave as specified in this document.
</PARA>
</LISTITEM>
</VARLISTENTRY>
</VARIABLELIST>
</SECT1>

<SECT1 ID="terms">
<TITLE>Terminology</TITLE>
<VARIABLELIST>
<VARLISTENTRY>
<TERM>
can
</TERM>
<LISTITEM>
<PARA>
Describes a permissible optional feature or behavior available to
the user or application. The feature or behavior is mandatory for an
implementation that conforms to this document. An application can rely
on the existence of the feature or behavior.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM>
implementation-defined
</TERM>
<LISTITEM>
<PARA>
(Same meaning as implementation-dependent.) Describes a value or
behavior that is not defined by this document but is selected by an
implementor. The value or behavior may vary among implementations
that conform to this document. An application should not rely on the
existence of the value or behavior. An application that relies on such
a value or behavior cannot be assured to be portable across conforming
implementations.  The implementor shall document such a value or behavior
so that it can be used correctly by an application.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM>
may
</TERM>
<LISTITEM>
<PARA>
Describes a feature or behavior that is optional for an implementation
that conforms to this document. An application should not rely on the
existence of the feature or behavior. An application that relies on such
a feature or behavior cannot be assured to be portable across conforming
implementations.  To avoid ambiguity, the opposite of may is expressed
as need not, instead of may not.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM>
must
</TERM>
<LISTITEM>
<PARA>
Describes a feature or behavior that is mandatory for an application
or user. An implementation that conforms to this document shall support
this feature or behavior.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM>
shall
</TERM>
<LISTITEM>
<PARA>
Describes a feature or behavior that is mandatory for an implementation
that conforms to this document. An application can rely on the existence
of the feature or behavior.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM>
should
</TERM>
<LISTITEM>
<PARA>
For an implementation that conforms to this document, describes a feature
or behavior that is recommended but not mandatory. An application should
not rely on the existence of the feature or behavior. An application that
relies on such a feature or behavior cannot be assured to be portable
across conforming implementations.
</PARA>
<PARA>
For an application, describes a feature or behavior that is recommended
programming practice for optimum portability.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM>
undefined
</TERM>
<LISTITEM>
<PARA>
Describes the nature of a value or behavior not defined by this document
which results from use of an invalid program construct or invalid
data input.  The value or behavior may vary among implementations that
conform to this document. An application should not rely on the existence
or validity of the value or behavior. An application that relies on any
particular value or behavior cannot be assured to be portable across
conforming implementations.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM>
unspecified
</TERM>
<LISTITEM>
<PARA>
Describes the nature of a value or behavior not specified by this document
which results from use of a valid program construct or valid data input.
The value or behavior may vary among implementations that conform to this
document. An application should not rely on the existence or validity
of the value or behavior. An application that relies on any particular
value or behavior cannot be assured to be portable across conforming
implementations.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM>
will
</TERM>
<LISTITEM>
<PARA>
Same meaning as shall; shall is the preferred term.
</PARA>
</LISTITEM>
</VARLISTENTRY>
</VARIABLELIST>
</SECT1>

</CHAPTER>
</PART>
