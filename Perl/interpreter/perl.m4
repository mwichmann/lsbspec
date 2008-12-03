<PART ID="perl">
<TITLE>Perl Interpreter</TITLE>

<CHAPTER ID="perl-int">
<TITLE>Perl Interpreter</TITLE>

<SECT1 ID="perlintro">
<TITLE>Introduction</TITLE>
<PARA>
The Perl intrepreter API is described in the
<xref linkend="std.PerlLang">,
with the following requirements for an LSB conforming runtime.
</PARA>
</SECT1>

<SECT1 ID="perllocation">
<TITLE>Perl Interpreter Location</TITLE>
<PARA>
The Perl interpreter binary, or a link to the binary, 
shall exist at <filename>/usr/bin/perl</filename>.
</PARA>
</SECT1>

<SECT1 ID="perlversion">
<TITLE>Perl Interpreter Version</TITLE>
<PARA>
The default installed Perl version shall be 5.8.8 or greater.
<!--removed bug 2385: Applications can depend on the 5.8.8 interfaces. -->
</PARA>
</SECT1>

<SECT1 ID="perloper" XRefLabel="Perl Operators and Functions">
<TITLE>Perl Operators and Functions</TITLE>
<PARA>
Core Perl operators, subroutines, and built-in functions
shall be present and shall operate as defined in 
<xref linkend="std.PerlSyn">,
<xref linkend="std.PerlOp"> and
<xref linkend="std.PerlFun">.
</PARA>
</SECT1>

<SECT1 ID="perlymodules" XRefLabel="Perl Modules">
<TITLE>Perl Modules</TITLE>
m4_include(modules.sgml)
</SECT1>

<SECT1 ID=perlcommand XRefLabel="Perl Command">
<TITLE>Perl Interpreter Command</TITLE>
<PARA>
The <command>perl</command> command is described in
<xref linkend="std.PerlMan">.
</PARA>
</SECT1>

</CHAPTER>
</PART>
