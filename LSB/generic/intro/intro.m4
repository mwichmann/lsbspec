<PREFACE id="OVERVIEW">
<TITLE>Foreword</TITLE>
<PARA>
This is version &specversion; of the &spectitle;.
This version is a preliminary version for review only. Conclusion of work on
this version will result in version 2.0 of the Linx Standard Base
Specification.
</PARA>
<PARA>
Implmentations may not claim conformance to this version.
<!--
An implementation of this version of the specification may not claim
to be an implementation of the Linux Standard Base unless it has successfully
completed the compliance process as defined by the Free Standards Group.
-->
</PARA>
</PREFACE>

<PREFACE ID="INTRO"><TITLE>Introduction</TITLE>
<PARA>
The LSB defines a binary interface for application programs that are compiled
and packaged for LSB-conforming implementations on many different hardware
architectures. Since a binary specification shall include information specific
to the computer processor architecture for which it is intended, it is not
possible for a single document to specify the interface for all possible
LSB-conforming implementations. Therefore, the LSB is a family of
specifications, rather than a single one.
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
The Linux Standard Base (LSB) defines a system interface for compiled
applications and a minimal environment for support of installation scripts.
Its purpose is to enable a uniform industry standard environment for
high-volume applications conforming to the LSB.
</PARA>

<PARA>
These specifications are composed of two basic parts: A common specification
("LSB-generic") describing those parts of the interface that
remain constant across all implementations of the LSB, and an
architecture-specific specification ("LSB-arch") describing the
parts of the interface that vary by processor architecture.
Together, the LSB-generic and the
architecture-specific supplement for a single hardware architecture provide a
complete interface specification for compiled application programs on systems
that share a common hardware architecture.
</PARA>

<PARA>
The LSB-generic document shall be used in conjunction with an
architecture-specific supplement. Whenever a section of the LSB-generic
specification
shall be supplemented by architecture-specific information, the LSB-generic
document
includes a reference to the architecture supplement. Architecture supplements
may also contain additional information that is not referenced in the
LSB-generic document.
</PARA>

<PARA>
The LSB contains both a set of Application Program Interfaces (APIs)
and Application Binary Interfaces (ABIs). APIs may appear in the
source code of portable applications, while the compiled binary of that
application may use the larger set of ABIs. A conforming implementation
shall provide all of the ABIs listed here. The compilation system may
replace (e.g. by macro definition) certain APIs with calls to one or
more of the underlying binary interfaces, and may insert calls to binary
interfaces as needed.
</PARA>

<PARA>
The LSB is primarily a binary interface
definition. Not all of the source level APIs available to applications
may be contained in this specification.
</PARA>

</CHAPTER>

<CHAPTER ID="normativerefs">
<TITLE>Normative References</TITLE>
<PARA>
The specifications listed below are referenced in whole or in part by
the Linux Standard Base.  In this specification, where only a particular section
of one of these references is identified, then the normative reference is to
that section alone, and the rest of the referenced document is informative.
</PARA>
<!-- the ID below is a placeholder for any standards that have Istandard=0 in the database -->
<TABLE ID='STD.'>
<TITLE>Normative References</TITLE>
<TGROUP COLS=2>
include(standards.sgml)
</TGROUP>
</TABLE>
</CHAPTER>

<CHAPTER ID="REQUIREMENTS">
<TITLE>Requirements</TITLE>
<SECT1 ID="rlibraries">
<TITLE>Relevant Libraries</TITLE>
<PARA>
dnl 
dnl the following para is architecture specific. The makefile
dnl now contains -DARCH=foobar to ensure that this para comes out
dnl the way it is supposed to for the different architectures
dnl since this file is copied from generic to each archLSB
dnl
ifelse(ARCH,`All', 
	`define(`TBLTARGET',`"tbl-glsb-stdlib"')', 
	`define(`TBLTARGET',`"tbl-archlsb-stdlib"')')
ifelse(ARCH,`All',
`
The libraries listed in <XREF LINKEND='TBLTARGET`> shall
be available on a Linux Standard Base system, with the specified
runtime names. The libraries listed in <XREF LINKEND="tbl-lsbgeneric-archlib">
are architecture specific, but shall be available on all LSB
conforming systems. This list may be supplemented or amended by the
architecture-specific specification.
',`
The libraries listed in <XREF LINKEND='TBLTARGET`> shall
be available on 'ARCH` Linux Standard Base systems, with the specified
runtime names. These names override or supplement the names specified
in the generic LSB specification.
')
</PARA>
<TABLE ID=TBLTARGET>
<TITLE>Standard Library Names</TITLE>
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
These libraries will be in an implementation-defined directory which
the dynamic linker shall search by default.
</PARA>
</SECT1>
<SECT1 ID="Implementation"><TITLE>LSB Implementation Conformance </TITLE>
<PARA>
An implementation shall satisfy the following requirements:</PARA><PARA>
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
<SECT1 ID="Application"><TITLE>LSB Application Conformance </TITLE>
<PARA>
An application shall satisfy the following requirements: </PARA><PARA>

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

include(../../../matters/definitions.sgml)

include(../../generic/intro/terms.sgml)

</PART>
