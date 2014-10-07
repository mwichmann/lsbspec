<para>
The libraries listed in the following tables shall
be available on a Linux Standard Base system, with the specified
runtime names. The libraries listed in <xref linkend="tbl-core-baselib-ps">
are architecture specific, but shall be available on all LSB
conforming systems under a name specified in each Architecture
Specific Part of the LSB Core module.
</para>

<para>
<table id=tbl-core-baselib>
<title>Library Names, Base Submodule, found in LSB Core Module</title>
<tgroup cols=2>
<thead>
<row>
<entry>Library</entry>
<entry>Runtime Name</entry>
</row>
</thead>
m4_include(`baselibs.sgml')
</tgroup>
</table>
</para>

<para>
<table id=tbl-core-baselib-ps>
<title>Library Names Base Submodule, found in the Architecture Specific Parts of LSB Core module</title>
<tgroup cols=2>
<thead>
<row>
<entry>Library</entry>
<entry>Runtime Name</entry>
</row>
</thead>
m4_include(`psbaselibs.sgml')
</tgroup>
</table>
</para>

<para>
<table id=tbl-core-seclib>
<title>Library Names, Security Submodule, found in LSB Core Module</title>
<tgroup cols=2>
<thead>
<row>
<entry>Library</entry>
<entry>Runtime Name</entry>
</row>
</thead>
m4_include(`securlibs.sgml')
</tgroup>
</table>
</para>

<para>
<table id=tbl-desktop-graphlib>
<title>Library Names, Graphics Submodule, found in LSB Desktop Module</title>
<tgroup cols=2>
<thead>
<row>
<entry>Library</entry>
<entry>Runtime Name</entry>
</row>
</thead>
m4_include(`graphlibs.sgml')
</tgroup>
</table>
</para>

<para>
<table id=tbl-desktop-gtklib>
<title>Library Names, Toolkit_Gtk Submodule, found in LSB Desktop Module</title>
<tgroup cols=2>
<thead>
<row>
<entry>Library</entry>
<entry>Runtime Name</entry>
</row>
</thead>
m4_include(`gtklibs.sgml')
</tgroup>
</table>
</para>

<para>
<table id=tbl-desktop-qtlib>
<title>Library Names, Toolkit_Qt Submodule, found in LSB Desktop Module</title>
<tgroup cols=2>
<thead>
<row>
<entry>Library</entry>
<entry>Runtime Name</entry>
</row>
</thead>
m4_include(`qtlibs.sgml')
</tgroup>
</table>
</para>

<para>
<table id=tbl-desktop-medialib>
<title>Library Names, Multimedia Submodule, found in LSB Desktop Module</title>
<tgroup cols=2>
<thead>
<row>
<entry>Library</entry>
<entry>Runtime Name</entry>
</row>
</thead>
m4_include(`medialibs.sgml')
</tgroup>
</table>
</para>

<para>
<table id=tbl-desktop-indeplib>
<title>Library Names, Toolkit_Independent Submodule, found in LSB Desktop Module</title>
<tgroup cols=2>
<thead>
<row>
<entry>Library</entry>
<entry>Runtime Name</entry>
</row>
</thead>
<!-- while there are no libraries, don't include tkindeplibs.sgml -->
<!-- instead no-op it: -->
<tbody>
<row><entry>none</entry></row>
</tbody>
</tgroup>
</table>
</para>

<para>
<table id=tbl-imaging-printlib>
<title>Library Names, Printing Submodule, found in LSB Imaging Module</title>
<tgroup cols=2>
<thead>
<row>
<entry>Library</entry>
<entry>Runtime Name</entry>
</row>
</thead>
m4_include(`printlibs.sgml')
</tgroup>
</table>
</para>

<para>
<table id=tbl-imaging-scanlib>
<title>Library Names, Scanning Submodule, found in LSB Imaging Module</title>
<tgroup cols=2>
<thead>
<row>
<entry>Library</entry>
<entry>Runtime Name</entry>
</row>
</thead>
m4_include(`scanlibs.sgml')
</tgroup>
</table>
</para>

<para>
<table id=tbl-languages-xmllib>
<title>Library Names, XML Submodule, found in LSB Languages Module</title>
<tgroup cols=2>
<thead>
<row>
<entry>Library</entry>
<entry>Runtime Name</entry>
</row>
</thead>
m4_include(`xmllibs.sgml')
</tgroup>
</table>
</para>
