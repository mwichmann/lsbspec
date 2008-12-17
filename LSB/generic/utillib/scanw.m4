<refentry id="curses-scanw-1">

<refmeta>
<refentrytitle>scanw</refentrytitle>
<refmiscinfo>Utility Libraries</refmiscinfo>
</refmeta> 

<refnamediv>
<refname>scanw</refname>
<refpurpose>
convert formatted input from a curses window
</refpurpose>
<indexterm id="ix-curses-scanw-1">
	<primary>scanw</primary></indexterm>
</refnamediv>

<refsynopsisdiv>
<funcsynopsis>
<funcsynopsisinfo>
#include &lt;curses.h&gt;
</funcsynopsisinfo>
<funcprototype>
<funcdef>int
<function>scanw</function>
</funcdef>
<paramdef>char *<parameter>fmt</parameter></paramdef>
<paramdef><parameter>...</parameter></paramdef>
</funcprototype>
</funcsynopsis>
</refsynopsisdiv>

m4_include(`scanw_diffs.sgml')
