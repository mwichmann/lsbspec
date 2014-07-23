<part id=tocbaselib>
<title>Base Libraries</title>

<chapter id=baselib>
<title>Libraries</title>

<para>
An LSB-conforming implementation shall support base libraries which
provide interfaces for accessing the operating system, processor and other
hardware in the system.
</para>

<para>
Only interfaces and interface details which are unique to the 
&specarchitecture; platform are defined here. 
This section should be used in conjunction with the 
corresponding section of &ISOSTD-1;.
</para>

<sect1 id=proginterp>
<title>Program Interpreter/Dynamic Linker</title>
<para>
The Program Interpreter shall be
<application><xref linkend="lib.proginterp"></application>.
</para>
</sect1>

m4_include(libc.sgml)

m4_include(libm.sgml)

m4_include(libpthread.sgml)

m4_include(libgcc_s.sgml)

m4_include(libdl.sgml)

m4_include(libcrypt.sgml)

</chapter>
</part>
