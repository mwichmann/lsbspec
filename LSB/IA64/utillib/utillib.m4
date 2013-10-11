<PART ID="tocutillib">
<TITLE>Utility Libraries</TITLE>

<CHAPTER id=utillib>
<TITLE>Libraries</TITLE>

<PARA>
An LSB-conforming implementation shall also support some utility libraries which
are built on top of the interfaces provided by the base libraries. These
libraries implement common functionality, and hide additional system dependent
information such as file formats and device names.
</PARA>

m4_include(libz.sgml)

m4_include(libcurses.sgml)

m4_include(libutil.sgml)

</CHAPTER>

</PART>
