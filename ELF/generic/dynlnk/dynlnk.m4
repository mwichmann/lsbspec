<CHAPTER ID="tocdynlnk">
<TITLE>Dynamic Linking</TITLE>

<SECT1 ID=dynlnk>
<TITLE>Program Loading and Dynamic Linking</TITLE>

<PARA>
LSB-conforming implementations shall support the object file information and
system actions that create running programs as specified in the
<XREF LINKEND="std.gABI41">
and
<XREF LINKEND="std.ABIUpdate">
and as further required by this specification and the relevant architecture specific part of &ISOSTD;.
</PARA>

<PARA>
Any shared object that is loaded shall contain sufficient DT_NEEDED records to
satisfy the symbols on the shared library.
</PARA>
</SECT1>

<SECT1 ID=progheader>
<TITLE>Program Header</TITLE>

<PARA>
In addition to the Segment Types defined in the
<XREF LINKEND="std.gABI41">
and
<XREF LINKEND="std.ABIUpdate">
the following Segment Types shall also be supported.
</PARA>

<TABLE>
<TITLE>Linux Segment Types</TITLE>
<TGROUP COLS=2>
<THEAD>
<ROW>
<ENTRY ALIGN=center>Name</ENTRY><ENTRY ALIGN=center>Value</ENTRY></ROW>
</THEAD>
<TBODY>
<ROW><ENTRY>PT_GNU_EH_FRAME</ENTRY><ENTRY>0x6474e550</ENTRY></ROW>
<ROW><ENTRY>PT_GNU_STACK</ENTRY><ENTRY>0x6474e551</ENTRY></ROW>
<ROW><ENTRY>PT_GNU_RELRO</ENTRY><ENTRY>0x6474e552</ENTRY></ROW>
</TBODY>
</TGROUP>
</TABLE>


<VARIABLELIST>

<VARLISTENTRY>
<TERM>PT_GNU_EH_FRAME</TERM>
<LISTITEM>
<PARA>
The array element specifies the location and size of the exception handling
information as defined by the .eh_frame_hdr section.
</PARA>
</LISTITEM>
</VARLISTENTRY>

<VARLISTENTRY>
<TERM>PT_GNU_STACK</TERM>
<LISTITEM>
<PARA>
The <STRUCTFIELD>p_flags</STRUCTFIELD> member specifies the permissions on the segment containing the stack
and is used to indicate wether the stack should be executable. The absense of
this header indicates that the stack will be executable.
</PARA>
</LISTITEM>
</VARLISTENTRY>

<VARLISTENTRY>
<TERM>PT_GNU_RELRO</TERM>
<LISTITEM>
<PARA>
The array element specifies the location and size of a segment which may be made read-only after relocation shave been processed.
</PARA>
</LISTITEM>
</VARLISTENTRY>

</VARIABLELIST>

</SECT1>

<SECT1 ID=DynamicSection>
<TITLE>Dynamic Entries</TITLE>
<SECT2><TITLE>Introduction</TITLE>
<PARA>
As described in <XREF LINKEND="STD.gABI41">, if an object file CHAPTERicipates in dynamic 
linking, its program header table shall have an element of type <SYMBOL>PT_DYNAMIC</SYMBOL>. 
This ``segment'' contains the <SYMBOL>.dynamic</SYMBOL> section. A special symbol, 
<SYMBOL>_DYNAMIC</SYMBOL>, 
labels the section, which contains an array of the following structures. 
<FIGURE>
<TITLE>Dynamic Structure</TITLE>
<PROGRAMLISTING>
typedef struct {
	Elf32_Sword	d_tag;
   	union {
   		Elf32_Word	d_val;
   		Elf32_Addr	d_ptr;
	} d_un;
} Elf32_Dyn;

extern Elf32_Dyn	_DYNAMIC[];

typedef struct {
	Elf64_Sxword	d_tag;
   	union {
   		Elf64_Xword	d_val;
   		Elf64_Addr	d_ptr;
	} d_un;
} Elf64_Dyn;

extern Elf64_Dyn	_DYNAMIC[];
</PROGRAMLISTING>
</FIGURE>
</PARA>
<PARA>
For each object with this type, <STRUCTFIELD>d_tag</STRUCTFIELD>
controls the interpretation of <STRUCTFIELD>d_un</STRUCTFIELD>.
</PARA>
</SECT2>
<SECT2 ID=dynsectent>
<TITLE>Dynamic Entries</TITLE>
<PARA>
</PARA>
<SECT3>
<TITLE>ELF Dynamic Entries</TITLE>
<PARA>
The following dynamic entries are defined in the 
<XREF LINKEND="std.gABI41">
and
<XREF LINKEND="std.ABIUpdate">.
m4_include(dyntag.sgml)
</PARA>
</SECT3>
<SECT3>
<TITLE>Additional Dynamic Entries</TITLE>
<PARA>
An LSB conforming object may also use the following additional Dynamic Entry
types.
m4_include(linuxtag.sgml)
</PARA>
</SECT3>
</SECT2>
</SECT1>

</CHAPTER>
