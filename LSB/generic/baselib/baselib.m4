<PART ID=tocbaselib>
<TITLE>Base Libraries</TITLE>

<CHAPTER id=baselib>
<TITLE>Libraries</TITLE>
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
</SECT1>

<SECT1 ID=proginterp>
<TITLE>Program Interpreter</TITLE>
<PARA>
The Program Interpreter is specified in the appropriate
architecture-specific LSB specification.
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
