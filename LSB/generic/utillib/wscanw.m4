<refentry id="curses-wscanw-1">

<refmeta>
<refentrytitle>wscanw</refentrytitle>
<refmiscinfo>Utility Libraries</refmiscinfo>
</refmeta> 

<refnamediv>
<refname>wscanw</refname>
<refpurpose>
convert formatted input from a curses window
</refpurpose>
<indexterm id="ix-curses-wscanw-1">
	<primary>wscanw</primary></indexterm>
</refnamediv>

<refsynopsisdiv>
<funcsynopsis>
<funcsynopsisinfo>
#include &lt;curses.h&gt;
</funcsynopsisinfo>
<funcprototype>
<funcdef>int
<function>wscanw</function>
</funcdef>
<paramdef>WINDOW *<parameter>win</parameter></paramdef>
<paramdef>char *<parameter>fmt</parameter></paramdef>
<paramdef><parameter>...</parameter></paramdef>
</funcprototype>
</funcsynopsis>
</refsynopsisdiv>

m4_include(`scanw_diffs.sgml')
