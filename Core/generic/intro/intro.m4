&preface;

<part id="TocIntro">
<title>Introductory Elements</title>
<chapter id="scope">
<title>Scope</title>
m4_include(`../../generic/intro/genscope.sgml')
m4_include(`../../generic/intro/modscope.sgml')
</chapter>

<chapter id="normativerefs">
<title>References</title>
<sect1 id="normativerefssect">
<title>Normative References</titlE>
m4_ifelse(ARCH,`All', `
<!-- the ID below is for auto generated xrefs to the LSB itself -->
<para id=STD.LSB xreflabel="This Specification">',`<para>')
The following specifications are incorporated by reference into
this specification. For dated references, only the edition cited
applies. For undated references, the latest edition of the referenced
specification (including any amendments) applies.
</para>
<note>
<para>
Where copies of a referenced specification are available on the World Wide Web,
a Uniform Resource Locator (URL) is given, for informative purposes only.
Such URL might at any given time resolve to a more recent copy of the 
specification, or be out of date (not resolve). 
Reference copies of specifications at the revision level indicated 
may be found at the Linux Foundation's 
<ULINK URL='http://refspecs.linuxbase.org'>Reference Specifications</ULINK> site.
</para>
</note>
<!-- the ID below is a placeholder for any standards that have Istandard=0 in the database -->
<table id='STD.base'>
<title>Normative References</title>
<tgroup cols=3>
m4_include(`standards.sgml')
</tgrouP>
</table>
</sect1>

<sect1 id="informativerefs">
<title>Informative References/Bibliography</title>
<para>
The documents listed below provide essential background
information to implementors of this specification. These references are
included for information only, and do not represent normative parts
of this specification.
</para>
<table>
<title>Other References</title>
<tgroup cols=3>
m4_include(`references.sgml')
</tgroup>
</table>
</sect1>
</chapter>

<chapter id="Requirements">
<title>Requirements</title>
<sect1 id="rlibraries">
<title>Relevant Libraries</title>
<para>
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
The libraries listed in <Xref linkend='TBLTARGET`> shall
be available on a Linux Standard Base system, with the specified
runtime names. The libraries listed in <xref linkend="tbl-lsbgeneric-archlib">
are architecture specific, but shall be available on all LSB
conforming systems. This list may be supplemented or amended by the relevant
architecture specific part of &ISOSTD;.
',`
The libraries listed in <xref linkend='TBLTARGET`> shall
be available on 'ARCH` Linux Standard Base systems, with the specified
runtime names. These names override or supplement the names specified
in the generic LSB (&ISOSTD-1;) specification. The specified program 
interpreter, referred to as proginterp in this table,
shall be used to load the shared libraries specified by
<constant>DT_NEEDED</constant> entries at run time.
')
</para>
<table id=TBLTARGET>
<title>Standard Library Names</title>
<tgroup cols=2>
<thead>
<row>
<entry>Library</entry>
<entry>Runtime Name</entry>
</row>
</thead>
m4_include(libraries.sgml)
</tgroup>
</table>
<para>
These libraries will be in an implementation-defined directory which
the dynamic linker shall search by default.
</para>
</sect1>
<sect1 id="Implementation">
<title>LSB Implementation Conformance </title>
<para>
A conforming implementation is necessarily architecture specific,
and must provide the interfaces specified by both the generic LSB Core
specification (&ISOSTD-1) and the relevant architecture specific part
of &ISOSTD;.
<note>
<title>Rationale</title>
<para>
An implementation must provide <emphasis>at least</emphasis>
the interfaces specified in these specifications.
It may also provide additional interfaces.
</para>
</note>
</para>
<para>
A conforming implementation shall satisfy the following requirements:
</para>
<para>
<itemizedlist>
<listitem>
<para>
A processor architecture represents a family of related processors
which may not have identical feature sets. The architecture
specific parts of &ISOSTD; that supplement this specification for a given target
processor architecture describe a minimum acceptable processor.
The implementation shall provide all features of this processor,
whether in hardware or through emulation transparent
to the application.
</para>
</listitem>
<listitem>
<para>
The implementation shall be capable of executing compiled applications
having the format and using the system interfaces described in this
specification.
</para>
</listitem>
<listitem>
<para>
The implementation shall provide libraries containing the interfaces
specified by this specification, and shall provide a dynamic linking
mechanism that allows these interfaces to be attached to applications
at runtime. All the interfaces shall behave as specified in
this specification.
</para>
</listitem>
<listitem>
<para>
The map of virtual memory provided by the implementation shall conform 
to the requirements of this specification. 
</para>
</listitem>
<listitem>
<para>
The implementation's low-level behavior with respect to function call
linkage, system traps, signals, and other such activities shall conform
to the formats described in this specification.
</para>
</listitem>
<listitem>
<para>
The implementation shall provide all of the mandatory interfaces
in their entirety. 
</para>
</listitem>
<listitem>
<para>
The implementation may provide one or more of the optional
interfaces. Each optional interface that is provided shall be provided
in its entirety. The product documentation shall state which optional
interfaces are provided.
</para>
</listitem>
<listitem>
<para>
The implementation shall provide all files and utilities specified as
part of this specification in the format defined here and in other documents
normatively included by reference.  
All commands and utilities shall behave as required by this specification. 
The implementation shall also provide all mandatory components of an 
application's runtime environment that are included or referenced in 
this specification.
</para>
</listitem>
<listitem>
<para>
The implementation, when provided with standard data formats and
values at a named interface, shall provide the behavior defined for
those values and data formats at that interface. However, a conforming
implementation may consist of components which are separately packaged
and/or sold. For example, a vendor of a conforming implementation
might sell the hardware, operating system, and windowing system as
separately packaged items.
</para>
</listitem>
<listitem>
<para>
The implementation may provide additional interfaces with different
names. It may also provide additional behavior corresponding to data
values outside the standard ranges, for standard named interfaces.
</para>
</listitem>
</itemizedlist>

</para>
</sect1>
<sect1 id="Application">
<title>LSB Application Conformance </title>
<para>
A conforming application containing object files
is necessarily architecture specific, and must
conform to both the generic LSB Core specification (&ISOSTD-1;) and the
relevant architecture specific part of &ISOSTD;.
A conforming application which contains no object files may be
architecture neutral. Architecture neutral applications shall conform only to
the requirements of the generic LSB Core specification (&ISOSTD-1;).
</para>
<para>
A conforming application shall satisfy the following requirements: 
</para>
<itemizedlist>
<listitem>
<para>
Executable files shall be either object files in the format defined 
in the Object Format section of this specification,
or script files in a scripting language where the interpreter is
required by this specification.
</para>
</listitem>
<listitem>
<para>
Object files shall participate in dynamic linking as defined in the 
Program Loading and Linking section of this specification.
</para>
</listitem>
<listitem>
<para>
Object files shall employ only the instructions, traps, and other low-level 
facilities defined as being for use by applications 
in the Low-Level System Information section of this specification 
</para>
</listitem>
<listitem>
<para>
If the application requires any optional interface defined in this specification
in order to be installed or to execute successfully, the requirement for that
optional interface shall be stated in the application's documentation.
</para>
</listitem>
<listitem>
<para>
The application shall not use any interface or data format that is not
required to be provided by a conforming implementation, unless
such an interface or data format is supplied by another application
through direct invocation of that application during execution.
The other application must also be a conforming application,
and the use of such interface or data format, as well as its source
(in other words, the other conforming application), shall
be identified in the documentation of the application.
</para>
</listitem>
<listitem>
<para>
The application shall not use any values for a named interface that are 
reserved for vendor extensions.
</para>
</listitem>
</itemizedlist>
<para>
A strictly conforming application shall not require or use any interface,
facility, or implementation-defined extension not defined in
this specification in order to be installed or to execute successfully.
</para>
</sect1>
</chapter>

<!-- boilerplate terms and definitions -->
&definitions;

m4_ifdef(`CORE',`
<chapter id="POSIXConflicts">
<title>Relationship To ISO/IEC 9945 POSIX</title>
<para>
This specification includes many interfaces described in 
<xref linkend="STD.SUSv4">.
Unless otherwise specified, such interfaces should behave exactly 
as described in that specification.
Any conflict between the requirements described here and the 
<xref linkend="STD.SUSv4"> standard is unintentional, 
except as explicitly noted otherwise.
</para>
<note>
<para>
In addition to the differences noted in this specification, a report,
<citetitle>
ISO/IEC TR 24715-Technical Report on the Conflicts Between the
ISO/IEC 9945 (POSIX) Standard and the Linux Standard Base Specification (LSB)
</citetitle>,
identifies the differences between edition 3.1 of this specification and 
<citetitle>POSIX 1003.1-2001 (ISO/IEC 9945-2003)</citetitle> (more
precisely, POSIX 2001 plus the first two corrigenda, informally known as
the 2004 edition).
It is the long term plan of the Linux Foundation to converge the 
LSB Core specification with the ISO/IEC POSIX specification.
</para>
</note>
<para>
The LSB Specification Authority is responsible for deciding the meaning
of conformance to normative referenced standards in the LSB context.
Problem reports regarding underlying or referenced standards in any
other context will be referred to the relevant maintenance body for 
that standard.
</para>
</chapter>
<chapter id="reltolf">
<title>Relationship To Other Linux Foundation Specifications</title>
<para>
The LSB is the base for several other specification projects under
the umbrella of the Linux Foundation (LF). This specification is the
foundation, and other specifications build on the interfaces defined
here. However, beyond those specifications listed as Normative References,
this specification has no dependencies on other LF projects.
</para>
<![%lfstd;[
<para>
&xISOSTD; corresponds to an earlier edition of this specification
(version 3.1), published
as an ISO/IEC standard in 2006 after submission by the Linux Foundation.
The ISO edition is also the subject of the technical report 
ISO/IEC TR 24715 referenced in the previous chapter.
</para>
]]>
</chapter>
')
</part>
