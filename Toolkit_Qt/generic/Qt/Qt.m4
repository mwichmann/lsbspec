<PART ID="tocqt">
<TITLE>Qt Libraries</TITLE>

<CHAPTER id=qt>
<TITLE>Libraries</TITLE>
<SECT1><TITLE>Introduction</TITLE>
<PARA>
An conforming implementation shall support the following
Qt libraries which
provide interfaces for creating rich user applications, either graphical or console.
<VARIABLELIST>
<VARLISTENTRY>
<TERM>QtCore</TERM>
<LISTITEM><para>A general-purpose application development library, not specific to graphical user interfaces. QtCore provides a main loop, threading classes, tool classes, template container classes,
IO classes, and so on.</para>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM>QtGui</TERM>
<LISTITEM><para>The GUI part of Qt, provides a paint engine, text rendering engine, widgets, printing, PDF generation, accessibility classes, and so on.</para>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM>QtXml</TERM>
<LISTITEM><para>The XML support for Qt, provides fast XML parsing and DOM classes to traverse the XML tree.</para>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM>QtOpenGL</TERM>
<LISTITEM><para>The OpenGL integration for Qt, provides OpenGL rendering and embedding.</para>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM>QtSql</TERM>
<LISTITEM><para>The database part of Qt, provides access to databases and models that connect databases into the model/view framework of QtGui.</para>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM>QtSvg</TERM>
<LISTITEM><para>Renders Svg files into any context, for displaying on the screen, printing or embedding in PDF.</para>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM>QtNetwork</TERM>
<LISTITEM><para>Provides network server and client classes, TCP/IP, UDP, Http, Ftp, Url parsing support, and so on.</para>
</LISTITEM>
</VARLISTENTRY>
</VARIABLELIST>
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

include(libQtCore.sgml)
include(libQtGui.sgml)
include(libQtXml.sgml)
include(libQtOpenGL.sgml)
include(libQtSql.sgml)
include(libQtSvg.sgml)
include(libQtNetwork.sgml)

</CHAPTER>

</PART>
