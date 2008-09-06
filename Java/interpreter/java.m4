<PART ID="java">
<TITLE>Java Interpreter</TITLE>

<CHAPTER ID="java-int">
<TITLE>Java Interpreter</TITLE>

<SECT1 ID="javaintro">
<TITLE>Introduction</TITLE>
<PARA>
The Java intrepreter API is described in the
<xref linkend="std.Java">,
with the following requirements for an LSB conforming runtime.
</PARA>
</SECT1>

<SECT1 ID="java-location">
<TITLE>Java Interpreter Location</TITLE>
<PARA>
The Java interpreter binary, or a link to the binary, 
shall exist at <filename>/usr/bin/java</filename>.
</PARA>
</SECT1>

<SECT1 ID="java-version">
<TITLE>Java Interpreter Version</TITLE>
<PARA>
The default installed Java version shall be Java 6 Platform Standard Edition or greater.
Applications can depend on the Java 6 Platform SE interfaces.
</PARA>
</SECT1>

<SECT1 ID="java-oper" XRefLabel="Operators and Functions">
<TITLE>Operators and Functions</TITLE>
<PARA>
Core Java operators, subroutines, and built-in functions
shall be present and shall operate as defined in 
<xref linkend="std.Java">.
</PARA>
</SECT1>

<SECT1 ID=java-command XRefLabel="Java Command">
<TITLE>Java Interpreter Command</TITLE>
m4_include(command.sgml)
</SECT1>

</CHAPTER>
</PART>
