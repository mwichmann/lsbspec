<PART ID="python">
<TITLE>Python Interpreter</TITLE>

<CHAPTER ID="python-int">
<TITLE>Python Interpreter</TITLE>

<SECT1 ID="pythonintro">
<TITLE>Introduction</TITLE>
<PARA>
The Python intrepreter API is described in the
<xref linkend="std.PythonLib">,
with the following requirements for an LSB conforming runtime.
</PARA>
</SECT1>

<SECT1 ID="pylocation">
<TITLE>Python Interpreter Location</TITLE>
<PARA>
The Python interpreter binary, or a link to the binary, 
shall exist at <filename>/usr/bin/python</filename>.
</PARA>
</SECT1>

<SECT1 ID="pyversion">
<TITLE>Python Interpreter Version</TITLE>
<PARA>
The default installed Python version shall be 2.4.2 or greater.
Applications can depend on the 2.4 interfaces.
</PARA>
</SECT1>

<SECT1 ID="pyoper" XRefLabel="Operators and Functions">
<TITLE>Operators and Functions</TITLE>
<PARA>
Core Python operators, subroutines, and built-in functions
shall be present and shall operate as defined in 
<xref linkend="std.Python">.
</PARA>
</SECT1>

<SECT1 ID="pymodules" XRefLabel="Python Modules">
<TITLE>Python Modules</TITLE>
m4_include(modules.sgml)
</SECT1>

<SECT1 ID=pycommand XRefLabel="Python Command">
<TITLE>Python Interpreter Command</TITLE>
m4_include(command.sgml)
</SECT1>

</CHAPTER>
</PART>
