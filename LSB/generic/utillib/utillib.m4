<PART ID="tocutillib">
<TITLE>Utility Libraries</TITLE>

<CHAPTER id=utillib>
<TITLE>Utility Libraries</TITLE>
<SECT1><TITLE>Introduction</TITLE>
<PARA>
An LSB-conforming implementation shall also support the following utility
libraries which
are built on top of the interfaces provided by the base libraries. These
libraries implement common functionality, and hide additional system dependent
information such as file formats and device names.
<itemizedlist>
<listitem><para>libz</para></listitem>
<listitem><para>libcurses</para></listitem>
<listitem><para>libutil</para></listitem>
</itemizedlist>
</PARA>
<PARA>
The structure of the definitions for these libraries follows the
same model as used for <XREF LINKEND=baselib>.
</PARA>
</SECT1>
include(libz.sgml)

include(libcurses.sgml)

include(libutil.sgml)

</CHAPTER>

</PART>
