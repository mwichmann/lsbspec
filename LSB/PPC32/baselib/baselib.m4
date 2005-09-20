<PART ID=tocbaselib>
<TITLE>Base Libraries</TITLE>

<CHAPTER id=baselib>
<TITLE>Libraries</TITLE>

<PARA>

An LSB-conforming implementation shall support base libraries which
provide interfaces for accessing the operating system, processor and other
hardware in the system.
</PARA>

<PARA>
Only those interfaces that are unique to the PowerPC 32 platform are
defined here. This section should be used in conjunction with the
corresponding section in the generic Linux Standard Base Core Specification.
</PARA>

<SECT1 ID=proginterp>
<TITLE>Program Interpreter/Dynamic Linker</TITLE>
<PARA>
The Program Interpreter shall be
<application><XREF LINKEND="lib.proginterp"></application>.
</PARA>
</SECT1>


include(libc.sgml)

include(libm.sgml)

include(libpthread.sgml)

include(libgcc_s.sgml)

include(libdl.sgml)

include(libcrypt.sgml)

</CHAPTER>

</PART>
