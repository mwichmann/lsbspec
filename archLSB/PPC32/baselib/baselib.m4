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
corresponding section in the Linux Standard Base Specification.
</PARA>

include(libc.sgml)

include(libm.sgml)

include(libpthread.sgml)

include(libdl.sgml)

include(libcrypt.sgml)

</CHAPTER>

</PART>
