<PART ID=tocbaselib>
<TITLE>Base Libraries</TITLE>

<CHAPTER id=baselib>
<TITLE>Base Libraries</TITLE>
<SECT1><TITLE>Introduction</TITLE>
<PARA>
An LSB-conforming implementation shall support the following
base libraries which
provide interfaces for accessing the operating system, processor and other
hardware in the system.
<itemizedlist>
<listitem><para>libc</para></listitem>
<listitem><para>libm</para></listitem>
<listitem><para>libgcc_s</para></listitem>
<listitem><para>libdl</para></listitem>
<listitem><para>librt</para></listitem>
<listitem><para>libcrypt</para></listitem>
<listitem><para>libpam</para></listitem>
</itemizedlist>
</PARA>
<PARA>
There are three main parts to the definition of each of these
libraries.
</PARA>
<PARA>
The "Interfaces" section defines the required library name and version,
and the required public symbols (interfaces and global data), as well
as symbol versions, if any.
</PARA>
<PARA>
The "Interface Definitions" section provides complete or partial
definitions of certain interfaces where either this specification is
the source specification, or where there are variations from the source
specification.
</PARA>
<PARA>
For source definitions of interfaces which include a reference to a
header file, the contents of such header files form a
part of the specification.  The "Data Definitions" section provides the
binary-level details for the header files from the source specifications,
such as values for macros and enumerated types, as well as structure layouts,
sizes and padding, etc.  These data definitions, although presented in the form
of header files for convenience, should not be taken a representing complete
header files, as they are a supplement to the source
specifications.  Application developers should follow the guidelines
of the source specifications when determining which header files need
to be included to completely resolve all references.
<NOTE>
<PARA>
While the Data Definitions supplement the source specifications,
this specification itself does not require conforming implementations
to supply any header files.
</PARA>
</NOTE>
</PARA>
</SECT1>

<SECT1 ID=proginterp>
<TITLE>Program Interpreter</TITLE>
<PARA>
The Program Interpreter is specified in the appropriate
architecture specific supplement.
</PARA>
</SECT1>


include(libc.sgml)

include(libm.sgml)

include(libpthread.sgml)

include(libgcc_s.sgml)

include(libdl.sgml)

include(librt.sgml)

include(libcrypt.sgml)

include(libpam.sgml)

</CHAPTER>

</PART>
