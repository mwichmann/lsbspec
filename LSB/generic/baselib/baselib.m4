<PART ID=tocbaselib>
<TITLE>Base Libraries</TITLE>

<CHAPTER id=baselib>
<TITLE>Libraries</TITLE>

<PARA>
An LSB-conforming implementation shall support some base libraries which
provide interfaces for accessing the operating system, processor and other
hardware in the system.<FOOTNOTE ID="sym-vers">
<PARA>
Symbol versions are unique for each architecture. In release 1.0 of this
specification, the versions for only the IA32 architecture are specified.
Versions will be correctly specified on a per achitecture basis in future
releases of the specification.
</PARA>
</FOOTNOTE>
</PARA>

include(libc.sgml)

include(libm.sgml)

include(libpthread.sgml)

include(libdl.sgml)

include(libcrypt.sgml)

include(librt.sgml)

</CHAPTER>

</PART>
