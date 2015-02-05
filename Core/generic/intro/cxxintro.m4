&preface;

<PART ID="CXXTOCINTRO">
<TITLE>Introductory Elements</TITLE>
<CHAPTER ID="scope">
<TITLE>Scope</TITLE>
m4_include(`../../generic/intro/genscope.sgml')
m4_include(`../../generic/intro/cxxscope.sgml')
</CHAPTER>

<CHAPTER ID="cxxnormativerefs">
<TITLE>C++ Normative References</TITLE>
<PARA>
The specifications listed below are referenced in whole or in part by
this module of
the Linux Standard Base.  In this specification, where only a particular section
of one of these references is identified, then the normative reference is to
that section alone, and the rest of the referenced document is informative.
</PARA>
<!-- the ID below is a placeholder for any standards that have Istandard=0 in the database -->
<TABLE ID='STD.cxx'>
<TITLE>Normative References</TITLE>
<TGROUP COLS=2>
m4_include(`cxxstandards.sgml')
</TGROUP>
</TABLE>
</CHAPTER>

<CHAPTER ID="REQUIREMENTS">
<TITLE>Requirements</TITLE>
<SECT1 ID="rlibraries">
<TITLE>Relevant Libraries</TITLE>
<PARA>
The libraries listed in <xref linkend="tbl-gcxx-stdlib"> shall
be available on a Linux Standard Base system, with the specified
runtime names. 
</PARA>
<TABLE ID=tbl-gcxx-stdlib>
<TITLE>Standard Library Names</TITLE>
<TGROUP COLS=2>
<THEAD>
<ROW>
<ENTRY>Library</ENTRY>
<ENTRY>Runtime Name</ENTRY>
</ROW>
</THEAD>
m4_include(`cxxlibraries.sgml')
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

<!-- boilerplate terms and definitions -->
&definitions;

</PART>
