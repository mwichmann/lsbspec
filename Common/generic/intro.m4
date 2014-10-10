&preface;

<part id="TocIntro">
<title>Introductory Elements</title>
<chapter id="scope">
<title>Scope</title>
m4_include(`scope.sgml')
</chapter>

<chapter id="Requirements">
<title>Requirements</title>
<sect1 id="rlibraries">
<title>Relevant Libraries</title>
m4_include(`libraries.sgml')
</sect1>

<sect1 id="Implementation">
<title>LSB Implementation Conformance </title>
<para>
A conforming implementation is necessarily architecture specific,
and must provide the interfaces specified by both the generic LSB 
specifications and the applicable architecture specific part.
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
specific part of &ISOSTD; for a given target
processor architecture describes a minimum acceptable processor.
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
conform to both the generic LSB Core module specification (&ISOSTD-1;) and the
relevant architecture specific part of &ISOSTD;.
A conforming application which contains no object files may be
architecture neutral. Architecture neutral applications shall conform only to
the requirements of the generic LSB Core module specification (&ISOSTD-1;).
</para>
<para>
In addition, the application may optionally conform to one or more
additional LSB module specifications.
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
<para>
Applications distributed using the packaging specification described
in the generic LSB Core specification (&ISOSTD-1;) may, in addition to
other package dependencies described in this specification, declare a
dependency on "lsb" with a version of 5.0.
<note>
<title>Implementation Note</title>
<para>
Application dependencies should generally be as limited as possible.
For example, if a 64-bit POWER application only depends on items from
the core specification, a dependency on "lsb-core-ppc64" may be more
appropriate than a dependency on "lsb".  The latter dependency could
cause an implementation to install a number of other modules that may
not be necessary to execute this application.
</para>
</note>
</para>
</sect1>
</chapter>

<!-- boilerplate terms and definitions -->
&definitions;

<chapter id="POSIXConflicts">
<title>Relationship To ISO/IEC 9945 POSIX</title>
<para>
The LSB Core module of the LSB includes many interfaces described in 
the POSIX specification. For more details on this relationship,
please see the LSB Core Generic volume.
</para>

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
The LSB is foundation of several other specification projects under
the umbrella of the Linux Foundation (LF), which build on the interfaces 
defined here. However, beyond those specifications listed as 
Normative References in the various LSB specification volumes,
this specification has no dependencies on other LF projects.
</para>
</chapter>
</part>
