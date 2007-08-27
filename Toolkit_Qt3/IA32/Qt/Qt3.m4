<PART ID="tocqt3">
<TITLE>Qt3 Library</TITLE>

<CHAPTER id=qt3>
<TITLE>Library</TITLE>
<SECT1><TITLE>Introduction</TITLE>
<PARA>
An conforming implementation shall support the following
Qt library which
provide interfaces for creating rich user applications, either graphical or console.
<VARIABLELIST>
<VARLISTENTRY>
<TERM>qt-mt</TERM>
<LISTITEM><para>A general-purpose application development library. Proviedes a GUI-independent layer of tool classes, network support, SQL database support, XML handling and a GUI layer featuring a device-independent drawing API for printing, screen output and OpenGL support.
</para>
</LISTITEM>
</VARLISTENTRY>
</VARIABLELIST>
</PARA>
<PARA>
There are three main parts to the definition of each of this
library.
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
specification. If an interface definition requires one or more header 
files, one of those headers shall include the function 
prototype for the interface.
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

m4_include(libqt_mt.sgml)

</CHAPTER>

</PART>
