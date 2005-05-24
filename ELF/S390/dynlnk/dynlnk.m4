<CHAPTER ID="tocdynlnk">
<TITLE>Program Loading and Dynamic Linking</TITLE>
<SECT1><TITLE>Introduction</TITLE>
<PARA>
LSB-conforming implementations shall support the object file information and
system actions that create running programs as specified in the
<XREF LINKEND="std.S390.ABI"> and as supplemented by the
the generic LSB and this document. LSB-conforming implementations
need not support tags related functionality. LSB-conforming applications must
not rely on tags related funtionatliy.
</PARA>
</SECT1>


<SECT1 ID=programloading>
<TITLE>Program Loading</TITLE>
<PARA>
See chapter 3 of the <XREF LINKEND="std.S390.ABI">.
</PARA>

</SECT1>

<SECT1 ID=dynamiclinking>
<TITLE>Dynamic Linking</TITLE>
<PARA>
See chapter 3 of the <XREF LINKEND="std.S390.ABI">.
</PARA>

<SECT2 ID=dynsection>
<TITLE>Dynamic Section</TITLE>
<PARA>
The following dynamic entries are defined in the
<XREF LINKEND="std.S390.ABI">.
include(dyntag.sgml)
</PARA>
</SECT2>

<SECT2 ID=globaloffettable>
<TITLE>Global Offset Table</TITLE>
<PARA>
See chapter 3 of the <XREF LINKEND="std.S390.ABI">.
</PARA>
</SECT2>

<SECT2 ID=sharedobjectdependencies>
<TITLE>Shared Object Dependencies</TITLE>
<PARA>
See chapter 3 of the <XREF LINKEND="std.S390.ABI">.
</PARA>
</SECT2>

<SECT2 ID=functionaddresses>
<TITLE>Function Addresses</TITLE>
<PARA>
See chapter 3 of the <XREF LINKEND="std.S390.ABI">.
</PARA>
</SECT2>

<SECT2 ID=proceedurelinkagetable>
<TITLE>Procedure Linkage Table</TITLE>
<PARA>
See chapter 3 of the <XREF LINKEND="std.S390.ABI">.
</PARA>
</SECT2>


</SECT1>

</CHAPTER>
