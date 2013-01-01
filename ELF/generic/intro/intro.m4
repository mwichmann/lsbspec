<PREFACE id="foreword">
<TITLE>Foreword</TITLE>
<PARA>
This is version &specversion; of the Executable and Linking Format (ELF)
Specification.
This version is a preliminary version for review only. Conclusion of work on
this version will result in version &targetversion; of the ELF Specification.
</PARA>
<PARA>
Implmentations may not claim conformance to this version.
<!--
An implementation of this version of the specification may not claim
to be an implementation of the Linux Standard Base unless it has successfully
completed the compliance process as defined by the Linux Foundation.
-->
</PARA>
</PREFACE>

<PREFACE ID="INTRO"><TITLE>Introduction</TITLE>
<PARA>
<!--
The LSB defines a binary interface for application programs that are compiled
and packaged for LSB-conforming implementations on many different hardware
architectures. Since a binary specification shall include information specific
to the computer processor architecture for which it is intended, it is not
possible for a single document to specify the interface for all possible
LSB-conforming implementations. Therefore, the LSB is a family of
specifications, rather than a single one.
-->
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
</PREFACE>

<PART ID="TOCINTRO">
<TITLE>Introductory Elements</TITLE>
<CHAPTER ID="scope">
<TITLE>Scope</TITLE>
<PARA>
Executable and Linking Format (ELF) defines the object format for compiled
applications. This specification supplements the information found in
<XREF LINKEND="std.ABIUpdate"> and is intended to document additions made
since the publication of that document.
</PARA>
</CHAPTER>

<CHAPTER ID="normativerefs">
<TITLE>References</TITLE>
<SECT1 ID="normativerefssect">
<TITLE>Normative References</TITLE>
<PARA>
The following referenced documents are indispensable for the application of this
document. For dated references, only the edition cited applies. For undated references,
the latest edition of the referenced document (including any amendments) applies.
</PARA>
<NOTE>
<PARA>
Where copies of a document are available on the World Wide Web, a Uniform Resource
Locator (URL) is given. This may point to a more recent copy of the referenced
specification, or may be out of date. Reference copies of specifications at the revision
level indicated may be found at the Linux Foundation's 
<ULINK URL='http://refspecs.freestandards.org'>Reference Specifications</ULINK> site.
</PARA>
</NOTE>
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
<SECT1 ID="Implementation"><TITLE>ELF Implementation Conformance </TITLE>
<PARA>
An implementation shall satisfy the following requirements:</PARA><PARA>
<ITEMIZEDLIST><LISTITEM>
<PARA>
The implementation shall implement fully the architecture described in the
hardware manual for the target processor architecture. 
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
The implementation shall be capable of executing compiled applications having
the format and using the system interfaces described in this document.
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
The implementation shall provide libraries containing the interfaces
specified by this document, and shall provide a dynamic linking
mechanism that allows these interfaces to be attached to applications
at runtime. All the interfaces shall behave as specified in
this document.
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
The map of virtual memory provided by the implementation shall conform to
the requirements of this document. 
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
The implementation's low-level behavior with respect to function call linkage,
system traps, signals, and other such activities shall conform to the formats
described in this document. 
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
The implementation shall provide all of the mandatory interfaces
in their entirety. 
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
The implementation may provide one or more of the optional interfaces. Each
optional interface that is provided shall be provided in its entirety. The
product documentation shall state which optional interfaces are provided. 
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
The implementation shall provide all files and utilities specified as part of
this document in the format defined here and in other referenced documents.
All commands and utilities shall behave as required by this document. The
implementation shall also provide all mandatory components of an application's
runtime environment that are included or referenced in this document. 
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
The implementation, when provided with standard data formats and
values at a named interface, shall provide the behavior defined for
those values and data formats at that interface. However, a conforming
implementation may consist of components which are separately packaged
and/or sold. For example, a vendor of a conforming implementation
might sell the hardware, operating system, and windowing system as
separately packaged items.
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
The implementation may provide additional interfaces with different names. It
may also provide additional behavior corresponding to data values outside the
standard ranges, for standard named interfaces.
</PARA>
</LISTITEM>
</ITEMIZEDLIST>

</PARA>
</SECT1>
<SECT1 ID="Application"><TITLE>Application Conformance</TITLE>
<PARA>
An application shall satisfy the following requirements:
</PARA>
<PARA>

<ITEMIZEDLIST>
<LISTITEM>
<PARA>
Its object files participate in dynamic linking as defined in the Program
Loading and Linking System interface.
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
It employs only the instructions, traps, and other low-level facilities
defined in the Low-Level System interface as being for use by applications.
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
If it requires any optional interface defined in this document in order to be
installed or to execute successfully, the requirement for that optional
interface is stated in the application's documentation. 
</PARA>
</LISTITEM>
<!--
<LISTITEM>
<PARA>
It does not use any interface or data format that is not required to be
provided by a conforming implementation, unless: 

<ITEMIZEDLIST mark="BULLET">
<LISTITEM>
<PARA>
If such an interface or data format is supplied by another application through
direct invocation of that application during execution, that application is in
turn an LSB conforming application.
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
The use of that interface or data format, as well as its source, is identified
in the documentation of the application. 
</PARA>
</LISTITEM>
</ITEMIZEDLIST>

</PARA>
</LISTITEM>
-->
<LISTITEM>
<PARA>
It shall not use any values for a named interface that are reserved for vendor
extensions. 
</PARA>
</LISTITEM>
</ITEMIZEDLIST>

A strictly conforming application does not require or use any interface,
facility, or implementation-defined extension that is not defined in this
document in order to be installed or to execute successfully. 
</PARA>
</SECT1>
</CHAPTER>

&definitions;

</PART>
