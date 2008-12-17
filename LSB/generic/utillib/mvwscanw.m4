<refentry id="curses-mvwscanw-1">

<refmeta>
<refentrytitle>mvwscanw</refentrytitle>
<refmiscinfo>Utility Libraries</refmiscinfo>
</refmeta> 

<refnamediv>
<refname>mvwscanw</refname>
<refpurpose>
convert formatted input from a curses window
</refpurpose>
<indexterm id="ix-curses-mvwscanw-1">
	<primary>mvwscanw</primary></indexterm>
</refnamediv>

<refsynopsisdiv>
<funcsynopsis>
<funcsynopsisinfo>
#include &lt;curses.h&gt;
</funcsynopsisinfo>
<funcprototype>
<funcdef>int
<function>mvwscanw</function>
</funcdef>
<paramdef>WINDOW *<parameter>win</parameter></paramdef>
<paramdef>int <parameter>y</parameter></paramdef>
<paramdef>int <parameter>x</parameter></paramdef>
<paramdef>const char *<parameter>fmt</parameter></paramdef>
<paramdef><parameter>...</parameter></paramdef>
</funcprototype>
</funcsynopsis>
</refsynopsisdiv>

m4_include(`scanw_diffs.sgml')
