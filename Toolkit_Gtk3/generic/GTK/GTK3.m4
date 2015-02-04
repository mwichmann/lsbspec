<!-- the material from Toolkit_Gtk was duplicated into the Toolkit_Gtk3
     submodule. it is trimmed down mostly by commenting things out -->

<part id="tocgtk3">
<title>GTK+ Stack Libraries</title>

<chapter id=gtk3>
<title>Libraries</title>

<sect1>
<title>Introduction</title>
<para>
A conforming implementation shall support the following libraries from
the GTK+ 3 stack which
provide interfaces for creating rich graphical user interface applications.
<variablelist>
<!--varlistentry>
<term>GLib</term>
<listitem>
<para>A general-purpose utility library, not specific to graphical
user interfaces. Glib is implemented as several libraries,
providing a type system, a signal system, data conversion routines, 
string utilities, a filesystem abstraction and file utility routines, 
threading support and a main loop abstraction.</para>
<para>libglib-2.0</para>
<para>libgmodule-2.0</para>
<para>libgobject-2.0</para>
<para>libgthread-2.0</para>
<para>libgio-2.0</para>
</listitem>
</varlistentry-->
<!--varlistentry>
<term>ATK</term>
<listitem>
<para>ATK is the Accessibility Toolkit. It provides a set of generic
interfaces allowing accessibility technologies to interact with a
graphical user interface. For example, a screen reader uses ATK to
discover the text in an interface and read it to blind users. GTK+ widgets
have built-in support for accessibility using the ATK framework. </para>
<para>libatk-1.0</para>
</listitem>
</varlistentry-->
<!--varlistentry>
<term>Pango</term>
<listitem>
<para>Pango is a library for laying out and rendering text. It centers
around the PangoLayout object, representing a paragraph of text. Pango
provides the engine for GtkTextView, GtkLabel, GtkEntry, and other
widgets that display text.</para>
<para>libpango-1.0</para>
<para>libpangocairo-1.0</para>
<para>libpangoxft-1.0</para>
<para>libpangoft2-1.0</para>
</listitem>
</varlistentry-->
<!--varlistentry>
<term>GdkPixbuf</term>
<listitem>
<para>This is a small library which allows you to create GdkPixbuf
("pixel buffer") objects from image data or image files. Use a GdkPixbuf
in combination with GtkImage to display images.</para>
<para>libgdk_pixbuf-2.0</para>
<para>libgdk_pixbuf_xlib-2.0</para>
</listitem>
</varlistentry-->
<varlistentry>
<term>GDK</term>
<listitem>
<para>GDK is the abstraction layer that allows GTK+ to support multiple
windowing systems. GDK provides drawing and window system facilities on
X11, Windows, and the Linux framebuffer device.</para>
<!--para>libgdk-x11-2.0</para-->
<para>libgdk-3</para>
</listitem>
</varlistentry>
<varlistentry>
<term>GTK+</term>
<listitem>
<para>The GTK+ library contains widgets, that is, GUI components such
as GtkButton or GtkTextView.</para>
<!--para>libgtk-x11-2.0</para-->
<para>libgtk-3</para>
</listitem>
</varlistentry>
</variablelist>
</para>
<para>
There are three main parts to the definition of each of these
libraries.
</para>
<para>
The "Interfaces" section defines the required library name and version,
and the required public symbols (interfaces and global data), as well
as symbol versions, if any.
</para>
<para>
The "Interface Definitions" section provides complete or partial
definitions of certain interfaces where either this specification is
the source specification, or where there are variations from the source
specification. If an interface definition requires one or more header 
files, one of those headers shall include the function 
prototype for the interface.
</para>
<para>
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
<note>
<para>
While the Data Definitions supplement the source specifications,
this specification itself does not require conforming implementations
to supply any header files.
</para>
</note>
</para>
</sect1>

m4_dnl m4_include(libGlib.sgml)
m4_dnl m4_include(libGmodule.sgml)
m4_dnl m4_include(libGobject.sgml)
m4_dnl m4_include(libGthread.sgml)
m4_dnl m4_include(libGio.sgml)
m4_dnl m4_include(libAtk.sgml)
m4_dnl m4_include(libPango.sgml)
m4_dnl m4_include(libPangoCairo.sgml)
m4_dnl m4_include(libPangoxft.sgml)
m4_dnl m4_include(libPangoft2.sgml)
m4_dnl m4_include(libGdk_pixbuf.sgml)
m4_dnl m4_include(libGdk_pixbuf_xlib.sgml)
m4_dnl m4_include(libGdk_x11.sgml)
m4_include(libGdk_3.sgml)
m4_dnl m4_include(libGtk_x11.sgml)
m4_include(libGtk_3.sgml)

</chapter>
</part>
