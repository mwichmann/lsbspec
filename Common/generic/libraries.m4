<para>
The libraries listed in the following tables shall
be available on a Linux Standard Base system, with the specified
runtime names. The libraries listed in <xref linkend="tbl-corelib-ps">
are architecture specific, but shall be available on all LSB
conforming systems under a name specified in each Architecture
Specific Part of the LSB Core module.
</para>

<para>
<table id=tbl-corelib>
<title>LSB Core Module Library Names</title>
<tgroup cols=2>
<thead>
<row>
<entry>Library</entry>
<entry>Runtime Name</entry>
</row>
</thead>
m4_include(`corelibs.sgml')
</tgroup>
</table>
</para>

<para>
<table id=tbl-corelib-ps>
<title>LSB Core Module Library Names which vary by architecture</title>
<tgroup cols=2>
<thead>
<row>
<entry>Library</entry>
<entry>Runtime Name</entry>
</row>
</thead>
m4_include(`pscorelibs.sgml')
</tgroup>
</table>
</para>

<para>
<table id=tbl-desktoplib>
<title>LSB Desktop Module Library Names</title>
<tgroup cols=2>
<thead>
<row>
<entry>Library</entry>
<entry>Runtime Name</entry>
</row>
</thead>
m4_include(`desklibs.sgml')
</tgroup>
</table>
</para>

<para>
<table id=tbl-imaginglib>
<title>LSB Imaging Module Library Names</title>
<tgroup cols=2>
<thead>
<row>
<entry>Library</entry>
<entry>Runtime Name</entry>
</row>
</thead>
m4_include(`imaglibs.sgml')
</tgroup>
</table>
</para>

<para>
<table id=tbl-languageslib>
<title>LSB Languages Module Library Names</title>
<tgroup cols=2>
<thead>
<row>
<entry>Library</entry>
<entry>Runtime Name</entry>
</row>
</thead>
m4_include(`langlibs.sgml')
</tgroup>
</table>
</para>
