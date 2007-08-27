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
Only those interfaces that are unique to the S390 platform are
defined here. This section should be used in conjunction with the
corresponding section in the Linux Standard Base Specification.
</PARA>

<SECT1 ID=proginterp>
<TITLE>Program Interpreter/Dynamic Linker</TITLE>
<PARA>
The Program Interpreter shall be
<application><XREF LINKEND="lib.proginterp"></application>.
</PARA>
</SECT1>


m4_include(libc.sgml)

m4_include(libm.sgml)

m4_include(libpthread.sgml)

m4_include(libgcc_s.sgml)

m4_include(libdl.sgml)

m4_include(libcrypt.sgml)

</CHAPTER>

</PART>
