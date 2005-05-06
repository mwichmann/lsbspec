<PART ID="tocobjformat">
<TITLE>Object Format</TITLE>
<PARTINTRO>
<PARA>
LSB-conforming implementations shall support an object file format, called
Executable and Linking Format (ELF) as defined by the 
<XREF LINKEND="std.gABI41">,
<XREF LINKEND="std.IA64.ABI">
and as supplemented by the Linux Standard
Base Specification and this document.
</PARA>
</PARTINTRO>

<CHAPTER ID=elfheader>
<TITLE>ELF Header</TITLE>
<SECT1 ID="machineinfo">
<TITLE>Machine Information</TITLE>
<PARA>
LSB-conforming applications shall use the Machine Information as defined in
<XREF LINKEND="std.IA64.ABI">,
Chapter 4.
Implementations shall support the LP64 model. It is unspecified whether or
not the ILP32 model shall also be supported.
</PARA>
<SECT2 ID="mifileclass">
<TITLE>File Class</TITLE>
<PARA>
For LP64 relocatable objects, the file class value in
<literal>e_ident[EI_CLASS]</literal> may be either
<type>ELFCLASS32</type> or 
<type>ELFCLASS64</type>,
and a conforming linker must be able to process
either or both classes.
</PARA>
</SECT2>
<SECT2 ID="midataencoding">
<TITLE>Data Encoding</TITLE>
<PARA>
Implementations shall support 2's complement, little endian data encoding.
The data encoding value in
<literal>e_ident[EI_DATA]</literal> shall contain the value
<constant>ELFDATA2LSB</constant>.
</PARA>
</SECT2>
<SECT2 ID="miosidentification">
<TITLE>OS Identification</TITLE>
<PARA>
The OS Identification field 
<literal>e_ident[EI_OSABI]</literal> shall contain the value 
<constant>ELFOSABI_LINUX</constant>.
</PARA>
</SECT2>
<SECT2 ID="miprocessorident">
<TITLE>Processor Identification</TITLE>
<PARA>
The processor identification value held in <literal>e_machine</literal>
shall contain the value 
<constant>EM_IA_64</constant>.
</PARA>
</SECT2>
<SECT2 ID="miprocessorspecialflags">
<TITLE>Processor Specific Flags</TITLE>
<PARA>
The flags field <literal>e_flags</literal> shall be
as described in
<XREF LINKEND="std.IA64.ABI">,
Chapter 4.1.1.6.
</PARA>
<PARA>
The following additional processor-specific flags are defined:
</PARA>
<TABLE>
<TITLE>Additional Processor-Specific Flags</TITLE>
<TGROUP COLS=2>
<THEAD>
<ROW>
<ENTRY ALIGN=center>Name</ENTRY>
<ENTRY ALIGN=center>Value</ENTRY>
</ROW>
</THEAD>
<TBODY>
<ROW>
<ENTRY>EF_IA_64_LINUX_EXECUTABLE_STACK</ENTRY>
<ENTRY>0x00000001</ENTRY>
</ROW>
</TBODY>
</TGROUP>
</TABLE>
<VARIABLELIST>
<VARLISTENTRY>
<TERM>EF_IA_64_LINUX_EXECUTABLE_STACK</TERM>
<LISTITEM><PARA>
The stack and heap sections are executable.  If this flag
is not set, code can not be executed from the stack or heap.</PARA>
</LISTITEM>
</VARLISTENTRY>
</VARIABLELIST>
</SECT2>
</SECT1>
</CHAPTER>

<CHAPTER ID=sections>
<TITLE>Sections</TITLE>
<PARA>
The &itanium; architecture defines two processor-specific
section types, as described in
<XREF LINKEND="std.IA64.ABI">,
Chapter 4.
</PARA>
<SECT1 ID="specialsections">
<TITLE>Special Sections</TITLE>
<PARA>
The following sections are defined in the 
<XREF LINKEND="std.IA64.ABI">.
include(elfsect.sgml)
</PARA>
</SECT1>
<SECT1 ID="linuxspecial">
<TITLE>Linux Special Sections</TITLE>
<PARA>
The following Linux IA-64 specific sections are defined here.
include(linuxsect.sgml)
</PARA>
</SECT1>

<SECT1 ID="sectiontypes">
<TITLE>Section Types</TITLE>
<PARA>
Section Types are described in the 
<XREF LINKEND="std.IA64.ABI">,
Chapter 4.2.
LSB conforming implementations are not
required to use any sections in the range from
<constant>SHT_IA_64_LOPSREG</constant> to
<constant>SHT_IA_64_HIPSREG</constant>.
Additionally, LSB conforming implementations are not required
to support the
<constant>SHT_IA_64_PRIORITY_INIT</constant>
section, beyond the gABI requirements for the handling of
unrecognized section types, linking them into a contiguous section
in the object file created by the static linker.
</PARA>
</SECT1>

<SECT1 ID="sectionattribflags">
<TITLE>Section Attribute Flags</TITLE>
<PARA>
See
<XREF LINKEND="std.IA64.ABI">,
Chapter 4.2.2.
</PARA>
</SECT1>

<SECT1 ID="specialsectiontypes">
<TITLE>Special Section Types</TITLE>
<PARA>
See
<XREF LINKEND="std.IA64.ABI">,
Chapter 4.2.3.
</PARA>
</SECT1>

</CHAPTER>

<CHAPTER ID=symboltable>
<TITLE>Symbol Table</TITLE>

<PARA>
If an executable file contains a reference to a function defined in
one of its associated shared objects, the symbol table section for
that file shall contain an entry for that symbol.  The 
<StructField>st_shndx</StructField> member of that
symbol table
entry contains <StructField>SHN_UNDEF</StructField>.
This signals to the dynamic linker that the symbol definition for that
function is not contained in the executable file itself.  If that symbol
has been allocated a procedure linkage table entry in the executable file,
and the <StructField>st_value</StructField> member for
that symbol table entry is non-zero, the value shall contain the virtual
address of the first instruction of that procedure linkage table entry.
Otherwise, the <StructField> st_value</StructField> member
contains zero.  This procedure linkage table entry address is used by
the dynamic linker in resolving references to the address of the function.
</PARA>

</CHAPTER>

<CHAPTER ID=relocation>
<TITLE>Relocation</TITLE>

<PARA>
LSB-conforming applications shall use Relocations as defined in
<XREF LINKEND="std.IA64.ABI">,
Chapter 4.3.
</PARA>

<SECT1 ID="relocationtypes">
<TITLE>Relocation Types</TITLE>
<PARA>
See
<XREF LINKEND="std.IA64.ABI">,
Chapter 4.3.
</PARA>
</SECT1>

</CHAPTER>

</PART>
