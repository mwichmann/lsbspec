&preface;

<PART ID="TOCINTRO">
<TITLE>Introductory Elements</TITLE>
<CHAPTER ID="scope">
<TITLE>Scope</TITLE>
m4_include(`../../generic/intro/genscope.sgml')
m4_include(`modscope.sgml')
</CHAPTER>

<CHAPTER ID="normativerefs">
<TITLE>References</TITLE>
<SECT1 ID="normativerefssect">
<TITLE>Normative References</TITLE>
m4_ifelse(ARCH,`All', `
<!-- the ID below is for auto generated xrefs to the LSB itself -->
<PARA ID=STD.LSB XREFLABEL="This Specification">',`<PARA>')
The following referenced documents are indispensable for the application of this
document. For dated references, only the edition cited applies. For undated references,
the latest edition of the referenced document (including any amendments) applies.
</PARA>
<NOTE>
<PARA>
Where copies of a document are available on the World Wide Web, a Uniform Resource
Locator (URL) is given for informative purposes only. 
This may point to a more recent copy of the referenced
specification, or may be out of date. Reference copies of specifications at the revision
level indicated may be found at the Linux Foundation's 
<ULINK URL='http://refspecs.linuxbase.org'>Reference Specifications</ULINK> site.
</PARA>
</NOTE>
<!-- the ID below is a placeholder for any standards that have Istandard=0 in the database -->
<TABLE ID='STD.'>
<TITLE>Normative References</TITLE>
<TGROUP COLS=3>
m4_include(`standards.sgml')
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
<SECT1 ID="rlibraries">
<TITLE>Relevant Libraries</TITLE>
<PARA>
m4_dnl 
m4_dnl the following para is architecture specific. The makefile
m4_dnl now contains -DARCH=foobar to ensure that this para comes out
m4_dnl the way it is supposed to for the different architectures
m4_dnl since this file is copied from generic to each arch spec
m4_dnl
m4_ifelse(ARCH,`All', 
	`m4_define(`TBLTARGET',`"tbl-glsb-stdlib"')', 
	`m4_define(`TBLTARGET',`"tbl-archlsb-stdlib"')')
m4_ifelse(ARCH,`All',
`
The libraries listed in <XREF LINKEND='TBLTARGET`> shall
be available on a Linux Standard Base system, with the specified
runtime names. The libraries listed in <XREF LINKEND="tbl-lsbgeneric-archlib">
are architecture specific, but shall be available on all LSB
conforming systems. This list may be supplemented or amended by the relevant
architecture specific part of &ISOSTD;.
',`
The libraries listed in <XREF LINKEND='TBLTARGET`> shall
be available on 'ARCH` Linux Standard Base systems, with the specified
runtime names. These names override or supplement the names specified
in the generic LSB (&ISOSTD-1;) specification. The specified program interpreter,
referred to as proginterp in this table,
shall be used to load the shared libraries specified by
<CONSTANT>DT_NEEDED</CONSTANT> entries at run time.
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
m4_include(libraries.sgml)
</TGROUP>
</TABLE>
<PARA>
These libraries will be in an implementation-defined directory which
the dynamic linker shall search by default.
</PARA>
</SECT1>
<SECT1 ID="Implementation"><TITLE>LSB Implementation Conformance </TITLE>
<PARA>
A conforming implementation is necessarily architecture specific, and must provide the interfaces specified by
both the generic LSB Core specification (&ISOSTD-1) and the relevant architecture specific part
of &ISOSTD;.
<NOTE><TITLE>Rationale</TITLE>
<PARA>
An implementation must provide <emphasis>at least</emphasis>
the interfaces specified in these specifications. It may also provide additional interfaces.
</PARA>
</NOTE>
</PARA>
<PARA>
A conforming implementation shall satisfy the following requirements:</PARA><PARA>
<ITEMIZEDLIST><LISTITEM>
<PARA>
A processor architecture represents a family of related processors
which may not have identical feature sets. The architecture
specific parts of &ISOSTD; that supplement this specification for a given target
processor architecture describe a minimum acceptable processor.
The implementation shall provide all features of this processor,
whether in hardware or through emulation transparent
to the application.
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
The implementation shall be capable of executing compiled applications
having the format and using the system interfaces described in this
document.
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
A conforming application is necessarily architecture specific, and must conform to
both the generic LSB Core specification (&ISOSTD-1;)and the relevant architecture specific part
of &ISOSTD;.
</PARA>
<PARA>
A conforming application shall satisfy the following requirements: </PARA><PARA>

<ITEMIZEDLIST><LISTITEM>
<PARA>
Its executable files shall be either shell scripts or object files in the format defined for the Object File Format system interface.
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
Its object files shall participate in dynamic linking as defined in the Program Loading and Linking System interface.
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
It shall employ only the instructions, traps, and other low-level facilities defined in the Low-Level System interface as being for use by applications.
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
If it requires any optional interface defined in this document in order to be installed or to execute successfully, the requirement for that optional interface shall be stated in the application's documentation. 
</PARA>
</LISTITEM><LISTITEM>
<PARA>
It shall not use any interface or data format that is not required to be provided by a conforming implementation, unless: 
<ITEMIZEDLIST mark="BULLET">
<LISTITEM>
<PARA>
If such an interface or data format is supplied by another application through direct invocation of that application during execution, that application shall be in turn an LSB conforming application.
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
The use of that interface or data format, as well as its source, shall be identified in the documentation of the application. 
</PARA>
</LISTITEM>
</ITEMIZEDLIST>
</PARA>
</LISTITEM><LISTITEM>
<PARA>
It shall not use any values for a named interface that are reserved for vendor extensions. 
</PARA>
</LISTITEM></ITEMIZEDLIST>

A strictly conforming application shall not require or use any interface, facility, or implementation-defined extension that is not defined in this document in order to be installed or to execute successfully. 
</PARA>
</SECT1>
</CHAPTER>

<!-- boilerplate terms and definitions -->
&definitions;

m4_ifdef(`CORE',`
<CHAPTER ID="POSIXConflicts">
<TITLE>Relationship To ISO/IEC 9945 POSIX</TITLE>
<PARA>
This specification includes many interfaces described in <XREF LINKEND="STD.SUSv3">.
Unless otherwise specified, such interfaces should behave exactly as described
in that specification.
Any conflict between the requirements described here and the <XREF
LINKEND="STD.SUSv3">
standard is unintentional, except as explicitly noted otherwise.
</PARA>
<NOTE>
<PARA>
In addition to the differences noted inline in this specification,
PDTR 24715 has extracted the differences between this specification and 
ISO/IEC 9945-2003 into a single place.
It is the long term plan of the Linux Foundation to converge the 
LSB Core Specification with ISO/IEC 9945 POSIX.
</PARA>
</NOTE>
<PARA>
The LSB Specification Authority is responsible for deciding the meaning
of conformance to normative referenced standards in the LSB context.
Problem Reports regarding underlying or referenced standards in any
other context will be referred to the relevant maintenance body for 
that standard.
</PARA>
</CHAPTER>
<CHAPTER ID="reltofsg">
<TITLE>Relationship To Other Linux Foundation Specifications</TITLE>
<PARA>
The LSB is the base for several other specification projects under the umbrella
of the Linux Foundation (LF). This specification is the foundation, and other
specifications build on the interfaces defined here. However, beyond those
specifications listed as Normative References, this specification has no
dependencies on other LF projects.
</PARA>
</CHAPTER>
')
</PART>
