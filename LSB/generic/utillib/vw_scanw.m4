<refentry id="curses-vw_scanw-1">

<refmeta>
<refentrytitle>vw_scanw</refentrytitle>
<refmiscinfo>Utility Libraries</refmiscinfo>
</refmeta> 

<refnamediv>
<refname>vw_scanw</refname>
<refpurpose>
convert formatted input from a curses window
</refpurpose>
<indexterm id="ix-curses-vw_scanw-1">
	<primary>vw_scanw</primary></indexterm>
</refnamediv>

<refsynopsisdiv>
<funcsynopsis>
<funcsynopsisinfo>
#include &lt;curses.h&gt;
</funcsynopsisinfo>
<funcprototype>
<funcdef>int
<function>vw_scanw</function>
</funcdef>
<paramdef>WINDOW *<parameter>win</parameter></paramdef>
<paramdef>const char *<parameter>fmt</parameter></paramdef>
<paramdef>va_list <parameter>vararglist</parameter></paramdef>
</funcprototype>
</funcsynopsis>
</refsynopsisdiv>

m4_include(`scanw_diffs.sgml')
