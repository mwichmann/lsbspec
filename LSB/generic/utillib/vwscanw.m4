<refentry id="curses-vwscanw-1">

<refmeta>
<refentrytitle>vwscanw</refentrytitle>
<refmiscinfo>Utility Libraries</refmiscinfo>
</refmeta> 

<refnamediv>
<refname>vwscanw</refname>
<refpurpose>
convert formatted input from a curses window
</refpurpose>
<indexterm id="ix-curses-vwscanw-1">
	<primary>vwscanw</primary></indexterm>
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
