<PART ID="tocgtk">
<TITLE>GTK+ Stack Libraries</TITLE>

<CHAPTER id=gtk>
<TITLE>Libraries</TITLE>
<SECT1><TITLE>Introduction</TITLE>
<PARA>
A conforming implementation shall support the following
GTK+ stack libraries which
provide interfaces for creating rich graphical user interface applications.
<VARIABLELIST>
<VARLISTENTRY>
<TERM>GLib</TERM>
<LISTITEM><para>A general-purpose utility library, not specific to graphical user interfaces. GLib provides many useful data types, macros, type conversions, string utilities, file utilities, a main loop abstraction, and so on.</para>
<para>libglib-2.0</para>
<para>libgmodule-2.0</para>
<para>libgobject-2.0</para>
<para>libgthread-2.0</para>
</listitem>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM>ATK</TERM>
<listitem><para>ATK is the Accessibility Toolkit. It provides a set of generic interfaces allowing accessibility technologies to interact with a graphical user interface. For example, a screen reader uses ATK to discover the text in an interface and read it to blind users. GTK+ widgets have built-in support for accessibility using the ATK framework. </para>
<para>libatk-1.0</para></listitem>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM>Pango</TERM>
<listitem><para>Pango is a library for internationalized text handling. It centers around the PangoLayout object, representing a paragraph of text. Pango provides the engine for GtkTextView, GtkLabel, GtkEntry, and other widgets that display text.</para>
<para>libpango-1.0</para>
<para>libpangocairo-1.0</para>
<para>libpangoxft-1.0</para>
<para>libpangoft2-1.0</para>
</listitem>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM>GdkPixbuf</TERM>
<listitem><para>This is a small library which allows you to create GdkPixbuf ("pixel buffer") objects from image data or image files. Use a GdkPixbuf in combination with GtkImage to display images.</para>
<para>libgdk_pixbuf-2.0</para>
<para>libgdk_pixbuf_xlib-2.0</para></listitem>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM>GDK</TERM>
<listitem><para>GDK is the abstraction layer that allows GTK+ to support multiple windowing systems. GDK provides drawing and window system facilities on X11, Windows, and the Linux framebuffer device.</para>
<para>libgdk-x11-2.0</para></listitem>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM>GTK+</TERM>
<listitem><para>The GTK+ library contains widgets, that is, GUI components such as GtkButton or GtkTextView.</para>
<para>libgtk-x11-2.0</para></listitem>
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


m4_include(libGlib.sgml)
m4_include(libGobject.sgml)
m4_include(libGmodule.sgml)
m4_include(libGthread.sgml)
m4_include(libAtk.sgml)
m4_include(libPango.sgml)
m4_include(libPangoCairo.sgml)
m4_include(libPangoxft.sgml)
m4_include(libPangoft2.sgml)
m4_include(libGdk_pixbuf.sgml)
m4_include(libGdk_pixbuf_xlib.sgml)
m4_include(libGdk_x11.sgml)
m4_include(libGtk_x11.sgml)

</CHAPTER>

</PART>
