&preface;

<part id="tocintro">
<title>Introductory Elements</title>
<chapter id="scope">
<title>Scope</title>
m4_include(`genscope.sgml')
m4_include(`modscope.sgml')
</chapter>

<chapter id="normativerefs">
<title>Normative References</title>
<!-- the ID below is for auto generated xrefs to the LSB itself -->
<para id=std.lsb xreflabel="This Specification">
The specifications listed below are referenced in whole or in part by
the LSB Imaging specification.  Such references may be normative or
informative; a reference to specification shall only be considered
normative if it is explicitly cited as such.  The LSB Imaging specification
may make normative references to a portion of these
specifications (that is, to define a specific function or group of
functions); in such cases, only the explicitly referenced portion of
the specification is to be considered normative.
</para>
<table>
<title>Normative References</title>
<tgroup cols=2>
m4_include(standards.sgml)
</tgroup>
</table>
</chapter>

<chapter id="requirements">
<title>Requirements</title>
<sect1 id="xlibraries">
<title>Relevant Libraries</title>
<para>
The libraries listed in <xref linkend="tbl-img-stdlib"> shall
be available on a Linux Standard Base system, with the specified
runtime names.  This list may be supplemented or amended by an
architecture-specific specification.
</para>
<table id=tbl-img-stdlib>
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

<!--
<sect1 id="Implementation">
<title>Linux Implementation Conformance </title>
<para>
An implementation shall satisfy the following requirements:
</para>
<para>
<itemizedlist>
<listitem>
<para>
The implementation shall implement fully the architecture described in the hardware manual for the target processor architecture. 
</para>
</listitem>
<listitem>
<para>
The implementation shall be capable of executing compiled applications having the format and using the system interfaces described in this document.
</para>
</listitem>
<listitem>
<para>
The implementation shall provide libraries containing the interfaces
specified by this document, and shall provide a dynamic linking
mechanism that allows these interfaces to be attached to applications
at runtime. All the interfaces shall behave as specified in
this document.
</para>
</listitem>
<listitem>
<para>
The map of virtual memory provided by the implementation shall conform to the requirements of this document. 
</para>
</listitem>
<listitem>
<para>
The implementation's low-level behavior with respect to function call linkage, system traps, signals, and other such activities shall conform to the formats described in this document. 
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
The implementation may provide one or more of the optional interfaces. Each optional interface that is provided shall be provided in its entirety. The product documentation shall state which optional interfaces are provided. 
</para>
</listitem>
<listitem>
<para>
The implementation shall provide all files and utilities specified as part of this document in the format defined here and in other referenced documents. All commands and utilities shall behave as required by this document. The implementation shall also provide all mandatory components of an application's runtime environment that are included or referenced in this document. 
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
The implementation may provide additional interfaces with different names. It may also provide additional behavior corresponding to data values outside the standard ranges, for standard named interfaces.
</para>
</listitem>
</itemizedlist>
</para>
</sect1>
-->
<!--
<sect1 id="Application">
<title>LSB Imaging Module Conformance</title>
<para>
A package shall satisfy the following requirements:
</para>
<para>
<itemizedlist>
<listitem>
<para>
Its executable files are either shell scripts or object files in the format defined for the Object File Format system interface.
</para>
</listitem>
<listitem>
<para>
Its object files participate in dynamic linking as defined in the Program Loading and Linking System interface.
</para>
</listitem>
<listitem>
<para>
It employs only the instructions, traps, and other low-level facilities defined in the Low-Level System interface as being for use by applications.
</para>
</listitem>
<listitem>
<para>
If it requires any optional interface defined in this document in order to be installed or to execute successfully, the requirement for that optional interface is stated in the application's documentation. 
</para>
</listitem>
<listitem>
<para>
It does not use any interface or data format that is not required to be provided by a conforming implementation, unless: 
<itemizedlist mark="bullet">
<listitem>
<para>
If such an interface or data format is supplied by another application through direct invocation of that application during execution, that application is in turn an LSB conforming application.
</para>
</listitem>
<listitem>
<para>
The use of that interface or data format, as well as its source, is identified in the documentation of the application. 
</para>
</listitem>
</itemizedlist>
</para>
</listitem>
<listitem>
<para>
It shall not use any values for a named interface that are reserved for vendor extensions. 
</para>
</listitem>
</itemizedlist>
A strictly conforming application does not require or use any interface, facility, or implementation-defined extension that is not defined in this document in order to be installed or to execute successfully. 
</para>
</sect1>
-->
</chapter>

<!-- boilerplate terms and definitions -->
&definitions

m4_include(ppd.sgml)

</part>
