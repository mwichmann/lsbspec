<PART ID="tocdynlnk">
<TITLE>Program Loading and Dynamic Linking</TITLE>
<PARTINTRO>
<PARA>
LSB-conforming implementations shall support the object file information and
system actions that create running programs as specified in the
<XREF LINKEND="std.S390.ABI"> and as supplemented by the
<XREF LINKEND="std.LSB"> and this document. LSB-conforming implementations
need not support tags related functionality. LSB-conforming applications must
not rely on tags related funtionatliy.
</PARA>
</PARTINTRO>


<CHAPTER ID=programloading>
<TITLE>Program Loading</TITLE>
<PARA>
</PARA>

</CHAPTER>

<CHAPTER ID=dynamiclinking>
<TITLE>Dynamic Linking</TITLE>
<PARA>
</PARA>

<SECT1 ID=proginterp>
<TITLE>Program Interpreter/Dynamic Linker</TITLE>
<PARA>
The LSB specifies the Program Interpreter to be
<application><XREF LINKEND="lib.proginterp"></application>.
</PARA>
</SECT1>

<SECT1 ID=dynsection>
<TITLE>Dynamic Section</TITLE>
<PARA>
The following dynamic entries are defined in the
<XREF LINKEND="std.S390.ABI">.
include(dyntag.sgml)
</PARA>
</SECT1>

<SECT1 ID=globaloffettable>
<TITLE>Global Offset Table</TITLE>
<PARA>
</PARA>
</SECT1>

<SECT1 ID=sharedobjectdependencies>
<TITLE>Shared Object Dependencies</TITLE>
<PARA>
</PARA>
</SECT1>

<SECT1 ID=functionaddresses>
<TITLE>Function Addresses</TITLE>
<PARA>
</PARA>
</SECT1>

<SECT1 ID=proceedurelinkagetable>
<TITLE>Procedure Linkage Table</TITLE>
<PARA>
</PARA>
</SECT1>


</CHAPTER>

</PART>
