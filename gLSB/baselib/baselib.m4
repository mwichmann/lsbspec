<PART ID=tocbaselib>
<TITLE>Base Libraries</TITLE>

<CHAPTER id=baselib>
<TITLE>Libraries</TITLE>

<PARA>
An LSB-conforming implementation shall support some general-purpose
libraries. Facilities in these libraries manipulate system data files,
transfer control to the implementation, and so on.  These Base correspond
to those libraries needed to implement the Single UNIX Specification Version 2.
</PARA>

<NOTE>
<PARA>
I'd still like to come up with a better distinction between base & util
libraries. 
</PARA>
</NOTE>

include(libc.sgml)
include(libcman.sgml)

include(libm.sgml)

include(libpthread.sgml)

include(libdl.sgml)

include(libcrypt.sgml)

include(librt.sgml)

</CHAPTER>

</PART>
