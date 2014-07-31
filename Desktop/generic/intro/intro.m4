&preface;

<part id="TocIntro">
<title>Introductory Elements</title>
<chapter id="scope">
<title>Scope</title>
m4_include(`../../generic/intro/genscope.sgml')
m4_include(`../../generic/intro/modscope.sgml')
</chapter>

<chapter id="normativerefs">
<title>References</title>
<sect1 id="normativerefssect">
<title>Normative References</title>
<!-- the ID below is for auto generated xrefs to the LSB itself -->
<para id=std.lsb xreflabel="This Specification">
The specifications listed below are referenced in whole or in part by
the LSB Desktop specification.  Such references may be normative or
informative; a reference to specification shall only be considered
normative if it is explicitly cited as such.  The LSB Desktop specification
may make normative references to a portion of these
specifications (that is, to define a specific function or group of
functions); in such cases, only the explicitly referenced portion of
the specification is to be considered normative.
</para>
<table>
<title>Normative References</title>
<tgroup cols=2>
m4_include(standards.sgml)
</tgroup>
</table>
</sect1>
<sect1 id="informativerefs">
<title>Informative References/Bibliography</title>
<para>
In addition, the specifications listed below provide essential background information
to implementors of this specification. These references are included for information
only.
</para>
<table>
<title>Other References</title>
<tgroup cols=3>
m4_include(`references.sgml')
</tgroup>
</table>
</sect1>
</chapter>

<chapter id="requirements">
<title>Requirements</title>
<sect1 id="rlibraries">
<title>Relevant Libraries</title>
<para>
The libraries listed in <xref linkend='tbl-desktop-stdlib'> shall
be available on a Linux Standard Base - Desktop system, with the specified
runtime names.  This list may be supplemented or amended by the
architecture-specific specification.
</para>
<table id=tbl-desktop-stdlib>
<title>Standard Library Names</title>
<tgroup cols=2>
<thead>
<row>
<entry>Library</entry>
<entry>Runtime Name</entry>
</row>
</thead>
m4_include(libraries.sgml)
</tgroup>
</table>
<para>
These libraries will be in an implementation-defined directory which
the dynamic linker shall search by default.
</para>
</sect1>

</chapter>

<!-- boilerplate terms and definitions -->
&definitions

</part>
