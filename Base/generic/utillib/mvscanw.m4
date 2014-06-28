<refentry id="curses-mvscanw-1">

<refmeta>
<refentrytitle>mvscanw</refentrytitle>
<refmiscinfo>Utility Libraries</refmiscinfo>
</refmeta> 

<refnamediv>
<refname>mvscanw</refname>
<refpurpose>
convert formatted input from a curses window
</refpurpose>
<indexterm id="ix-curses-mvscanw-1">
	<primary>mvscanw</primary></indexterm>
</refnamediv>

<refsynopsisdiv>
<funcsynopsis>
<funcsynopsisinfo>
#include &lt;curses.h&gt;
</funcsynopsisinfo>
<funcprototype>
<funcdef>int
<function>mvscanw</function>
</funcdef>
<paramdef>int <parameter>y</parameter></paramdef>
<paramdef>int <parameter>x</parameter></paramdef>
<paramdef>const char *<parameter>fmt</parameter></paramdef>
<paramdef><parameter>...</parameter></paramdef>
</funcprototype>
</funcsynopsis>
</refsynopsisdiv>

m4_include(`scanw_diffs.sgml')
