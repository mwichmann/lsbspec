<PREFACE id="OVERVIEW">
<TITLE>Foreword</TITLE>
<PARA>
This is version &specversion; of the Linux Packaging Specification (LPS).
This version is a preliminary version for review only. Conclusion of work on
this version will result in version 1.0 of the Linx Packaging Specification.
</PARA>
<PARA>
Implmentations may not claim conformance to this version.
<!--
An implementation of this version of the specification may not claim
to be an implementation of Linux Packaging unless it has successfully
completed the compliance process as defined by the Free Standards Group.
Note: This is boilerplate. It need not be a final requirment.
-->
</PARA>
</PREFACE>

<PREFACE ID="INTRO"><TITLE>Introduction</TITLE>
<PARA>
The LPS defines package syntax and semantics neccessary to provide correct
interoperation between packages produced by different entities. This
specification defines the file formats which may be used for packages,
the semantics of the package meta-data, and the protocols and semantics used
to access package repositories. Tools which manage package show conform to
this specification.
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
<!--
<PARA>
The Linux Standard Base (LSB) defines a system interface for compiled
applications and a minimal environment for support of installation scripts.
Its purpose is to enable a uniform industry standard environment for
high-volume applications conforming to the LSB.
</PARA>

<PARA>
The LSB is composed of two basic parts: A common specification
("generic LSB" or "gLSB") describing those parts of the interface that
remain constant across all implementations of the LSB, and an
architecture-specific specification ("archLSB") describing the
parts of the interface that vary by processor architecture.
Together, the generic LSB and the
architecture-specific supplement for a single hardware architecture provide a
complete interface specification for compiled application programs on systems
that share a common hardware architecture.
</PARA>

<PARA>
This document is the generic LSB. It shall be used in conjunction with an
architecture-specific supplement. Whenever a section of this specification
shall be supplemented by architecture-specific information, this document
includes a reference to the architecture supplement. Architecture supplements
may also contain additional information that is not referenced here.
</PARA>
-->
<PARA>
This section needs to be written.
</PARA>
</CHAPTER>

<CHAPTER ID="normativerefs">
<TITLE>Normative References</TITLE>
<PARA>
The specifications listed below are referenced in whole or in part by
the Linux Package Specification (LPS).  Such references may be normative or
informative; a reference to specification shall only be considered
normative if it is explicitly cited as such.  The LPS
may make normative references to a portion of these
specifications (that is, to define a specific function or group of
functions); in such cases, only the explicitly referenced portion of
the specification is to be considered normative.
</PARA>
<TABLE>
<TITLE>Normative References</TITLE>
<TGROUP COLS=2>
include(standards.sgml)
</TGROUP>
</TABLE>
</CHAPTER>

<!--
<CHAPTER ID="REQUIREMENTS">
<TITLE>Requirements</TITLE>
<SECT1 ID="Implementation"><TITLE>Linux Implementation Conformance </TITLE>
<PARA>
An implementation shall satisfy the following requirements:
</PARA>
<PARA>
<ITEMIZEDLIST><LISTITEM>
<PARA>
The implementation shall implement fully the architecture described in the hardware manual for the target processor architecture. 
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
The implementation shall be capable of executing compiled applications having the format and using the system interfaces described in this document.
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
The map of virtual memory provided by the implementation shall conform to the requirements of this document. 
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
The implementation's low-level behavior with respect to function call linkage, system traps, signals, and other such activities shall conform to the formats described in this document. 
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
The implementation may provide one or more of the optional interfaces. Each optional interface that is provided shall be provided in its entirety. The product documentation shall state which optional interfaces are provided. 
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
The implementation shall provide all files and utilities specified as part of this document in the format defined here and in other referenced documents. All commands and utilities shall behave as required by this document. The implementation shall also provide all mandatory components of an application's runtime environment that are included or referenced in this document. 
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
The implementation may provide additional interfaces with different names. It may also provide additional behavior corresponding to data values outside the standard ranges, for standard named interfaces.
</PARA>
</LISTITEM>
</ITEMIZEDLIST>
</PARA>
</SECT1>
<SECT1 ID="Application"><TITLE>Linux Package Conformance </TITLE>
<PARA>
A package shall satisfy the following requirements:
</PARA>
<PARA>
<ITEMIZEDLIST><LISTITEM>
<PARA>
Its executable files are either shell scripts or object files in the format defined for the Object File Format system interface.
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
Its object files participate in dynamic linking as defined in the Program Loading and Linking System interface.
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
It employs only the instructions, traps, and other low-level facilities defined in the Low-Level System interface as being for use by applications.
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
If it requires any optional interface defined in this document in order to be installed or to execute successfully, the requirement for that optional interface is stated in the application's documentation. 
</PARA>
</LISTITEM><LISTITEM>
<PARA>
It does not use any interface or data format that is not required to be provided by a conforming implementation, unless: 
<ITEMIZEDLIST mark="BULLET">
<LISTITEM>
<PARA>
If such an interface or data format is supplied by another application through direct invocation of that application during execution, that application is in turn an LSB conforming application.
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
The use of that interface or data format, as well as its source, is identified in the documentation of the application. 
</PARA>
</LISTITEM>
</ITEMIZEDLIST>
</PARA>
</LISTITEM><LISTITEM>
<PARA>
It shall not use any values for a named interface that are reserved for vendor extensions. 
</PARA>
</LISTITEM></ITEMIZEDLIST>
A strictly conforming application does not require or use any interface, facility, or implementation-defined extension that is not defined in this document in order to be installed or to execute successfully. 
</PARA>
</SECT1>
</CHAPTER>
-->

&definitions

include(terms.sgml)

</PART>
