<PART ID="tocintro">
<TITLE>Introduction</TITLE>

<CHAPTER id=Introduction>
<TITLE>Introduction</TITLE>
<PARA>
This is version &specversion of the Linux Standard Base Specification. This version
is a mostly complete framework of the specification, but many details are
still not filled in. 
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

<SECT1 ID="rstandards">
<TITLE>Related Standards</TITLE>
<PARA></PARA>
<TABLE>
<TITLE>Related Standards</TITLE>
<TGROUP COLS=3>
include(standards.sgml)
</TGROUP>
</TABLE>
</SECT1>

<SECT1 ID="rimplementations">
<TITLE>Related Implementations</TITLE>
<PARA></PARA>
<TABLE>
<TITLE>Related Implementations</TITLE>
<TGROUP COLS=3>
include(refimpls.sgml)
</TGROUP>
</TABLE>
</SECT1>

<SECT1 ID="rlibraries">
<TITLE>Relevent Libraries</TITLE>
<PARA></PARA>
<TABLE>
<TITLE>Relevent Libraries</TITLE>
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
<PARA></PARA>
</SECT1>

<SECT1 ID="defns">
<TITLE>Definitions</TITLE>
<NOTE>
<PARA>
The Application Binary  Interface (ABI) defined the following terms. We
probably want to have someting similar here. ABI, generic ABI, processor
specific ABI, ABI-conforming system, ABI-conforming program, ABI_nonconforming
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
