<PART ID="tocintro">
<TITLE>Introduction</TITLE>

<CHAPTER id=Introduction>
<TITLE>Introduction</TITLE>
<SECT1 ID="overview">
<TITLE>Introduction</TITLE>
<PARA>
This is version &specversion of the Linux Standard Base Specification. This 
version contained all of the sections that will apear in the final 1.0
Specfication. Behavioral specifications for some interfaces have not yet
been incorporated, but will be present in the 1.0 Specification.
</PARA>
<PARA>
Those wishing to implement this standard should use this specification with
the understanding that further testing and public review will occur, and that
changes as a result of these activities may occur.
</PARA>
<PARA>
An implementation of this version of the specification may not claim
to be an implementation of the Linux Standard Base.
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
The LSB is composed of two basic parts: A common part of the specification
describes those parts of the interface that remain constant across all hardware
implementations of the LSB, and an architecture-specific part of the
specification describes the parts of the specification that are specific to a
particular processor architecture. Together, the generic LSB and the
architecture-specific supplement for a single hardware architecture provide a
complete interface specification for compiled application programs on systems
that share a common hardware architecture.
</PARA>
<PARA>
This document is the generic LSB. It must be used in conjunction with an
architecture-specific supplement. Whenever a section of this specification
must be supplemented by architecture-specific information, this document
includes a reference to the architecture supplement. Architecture supplements
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
the Linux Standard Base.  Such references may be normative or
non-normative; a reference to specification shall only be considered
normative if it is explicitly cited as such.  The LSB
may make normative references to a portion of these
specifications (that is, to define a specific function or group of
functions); in such cases, only the explicitly referenced portion of
the specification is to be considered normative.

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
The complete LSB specification is composed of this generic LSB specification 
and the supplemental processor-specific specification for a particular 
processor architecture. These two documents constitute a specification that 
should be used in conjunction with the publicly-available standards documents 
it references. The LSB enumerates the system components it includes, but 
descriptions of those components may be included entirely in the LSB, partly 
in the LSB and partly in other documents, or entirely in other reference 
documents.
</PARA>
<PARA>
Programmers who wish to produce binary applications that will
run on any LSB-conforming implementation should follow this procedure:
</PARA>
<ORDEREDLIST NUMERATION="arabic">
<LISTITEM>
<PARA>
Link your binary application with the LSB's filter libraries found in
<FILENAME class=directory>/usr/lsb/lib</FILENAME>
to determine at compile time if your application is using
only LSB defined APIs.
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
Link your binary application with the LSB 
<FILENAME class=library path=/lib>ld-lsb.so.1</FILENAME>
dynamic linker/loader. 
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
Verify your binary application with the LSB's 
<FILENAME class=executable path=/usr/bin>lsbappchk</FILENAME>
tool to determine at runtime if your application is using only LSB defined APIs.
</PARA>
</LISTITEM>
</orderedlist>
</SECT1>

<SECT1 ID="defns">
<TITLE>Definitions</TITLE>
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
<VARLISTENTRY>
<TERM>
LSB Implementation Conformance 
</TERM>
<LISTITEM>
<PARA>
Manufacturers of LSB-conforming implementations providing the system 
interface described in this document shall satisfy the following set 
of requirements: 
</PARA>
<PARA>
1. The implementation shall implement fully the architecture described 
in the hardware manual for the target processor architecture. 
</PARA>
<PARA>
2. The implementation shall be capable of executing compiled applications 
having the format described in this document. 
</PARA>
<PARA>
3. The implementation shall provide libraries containing the interfaces 
specified by this document, and shall provide a dynamic 
linking mechanism that allows these interfaces to be attached to 
applications at runtime. All the interfaces shall behave as specified 
in the normative references and requirements of this document 
</PARA>
<PARA>
4. The map of virtual memory provided by the implementation shall conform 
to the requirements of this document. 
</PARA>
<PARA>
5. The implementation's low-level behavior with respect to function call 
linkage, system traps, signals, and other such activities shall conform 
to the formats described in this document. 
</PARA>
<PARA>
6. The compilation system shall compile source code into executable 
files having the formats and characteristics specified in this document. 
</PARA>
<PARA>
7. The implementation shall provide all of the mandatory interfaces, 
in their entirety. 
</PARA>
<PARA>
8. The implementation may provide one or more of the optional 
interfaces. Each optional interface that is provided shall be provided 
in its entirety. The product documentation 
shall state which optional interfaces are provided. 
</PARA>
<PARA>
9. The implementation shall provide all files and utilities specified 
as part of this document in the format defined here and in 
other referenced documents. All commands and utilities shall behave as 
required by this document. The implementation 
shall also provide all mandatory components of an application's runtime 
environment that are included or referenced in this document. 
</PARA>
<PARA>
10. The implementation, when provided with standard data formats 
and values at a named interface, shall provide the behavior defined 
for those values and data formats at that interface. However, a 
conforming implementation may consist of separately-packaged and/or sold 
components. For example, a vendor of a conforming implementation might 
sell the hardware, operating system, and windowing system as separately 
packaged items. 
</PARA>
<PARA>
11. The implementation may provide additional interfaces with different 
names. It may also provide additional behavior corresponding to data 
values outside the standard ranges, for standard named interfaces. 
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM>
LSB Application Conformance 
</TERM>
<LISTITEM>
<PARA>
An LSB conforming application has the following characteristics: 
</PARA>
<PARA>
+ Its executable files are either shell scripts or object 
files in the format defined for the Object File Format system interface. 
(Q:what about other interpreted languages, such as perl/awk/python etc?) 
</PARA>
<PARA>
+ Its object files participate in dynamic linking as defined in the 
Program Loading and Linking System interface. 
</PARA>
<PARA>
+ It employs only the instructions, traps, and other low-level 
facilities defined in the Low-Level System interface as being for use 
by applications. 
</PARA>
<PARA>
+ If it requires any optional interface defined in this document in 
order to be installed or to execute successfully, the requirement for 
that optional interface is stated in the application's documentation. 
</PARA>
<PARA>
+ It does not use any interface or data format that is not required to 
be provided by a conforming implementation, unless: 
</PARA>
<PARA>
- If such an interface or data format is supplied by another application 
through direct invocation of that application during execution, that 
application is in turn an LSB- compliant application. 
</PARA>
<PARA>
- The use of that interface or data format, as well as its source, 
is identified in the documentation of the application. 
</PARA>
<PARA>
+ It must not use any values for a named interface that are reserved 
for vendor extensions. 
</PARA>
<PARA>
A strictly conforming application does not require or use any interface, 
facility, or implementation-defined extension that is not defined in 
this document in order to be installed or to execute successfully. 
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM>
Rationale 
</TERM>
<LISTITEM>
<PARA>
An LSB-compliant application is expected to have no dependencies on any 
vendor extensions to this document. The most common such extensions are 
additional function entry points and additional libraries other than the 
ones defined in this document. If an application requires such extensions, 
it is not portable, since other LSB-conforming implementations may not 
provide those extensions. 
</PARA>
<PARA>
An LSB-compliant application is required to use system services on the 
implementation on which it is running, rather than importing system 
routines from some other implementation. Thus, it must link dynamically 
to any routines in the implementation that perform system traps to 
kernel services. 
</PARA>
<PARA>
It is to be expected that some applications may be companion applications 
to other applications. For example, a query application may be a 
companion to a database application; a preprocessor may be an adjunct 
to one or more compilers; a data reformatter may convert data from one 
document manager to another. In such cases, the application may or may 
not be LSB-compliant, regardless of whether the other application on 
which it is dependent is LSB-compliant. If such an application merely 
uses data produced by another application, the application's compliance is 
independent of the other application's compliance. If such an application 
actually invokes another application during execution (as, for example, 
a third-party math library), the invoking application is LSB-compliant 
only if it also constitutes a LSB-compliant application in combination 
with the invoked application. 
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
