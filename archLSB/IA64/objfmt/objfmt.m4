<PART ID="tocobjformat">
<TITLE>Object Format</TITLE>
<PARTINTRO>
<PARA>
LSB-conforming implementations shall support an object file format, called
Executable and Linking Format (ELF) as defined by the System V Application
Binary Interface, Edition 4.1, the System V Application Binary Interface -
DRAFT - April 29, 1998, 
Intel &reg; Itanium &trade;
Processor-specific Application Binary Interface - May 2001
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
Chapter 4 of the Intel Itanium Processor-specific ABI. 
Implementations shall support the LP64 model. It is unspecified whether or
not the ILP32 model shall also be supported.
</PARA>
<SECT2 ID="mifileclass">
<TITLE>File Class</TITLE>
<PARA>
For LP64 relocatable objects, the file class value may be either
<SystemItem class="Constant">ELFCLASS32</SystemItem> or 
<SystemItem class="Constant">ELFCLASS64</SystemItem>,
 and a conforming linker must be able to process
either or both classes.
</PARA>
</SECT2>
<SECT2 ID="midataencoding">
<TITLE>Data Encoding</TITLE>
<PARA>
Implementations shall support 2's complement, little endian data encoding.
</PARA>
</SECT2>
<SECT2 ID="miosidentification">
<TITLE>OS Identification</TITLE>
<PARA>
The OS Identification field shall contain the value 
<SystemItem class="Constant">ELFOSABI_LINUX</SystemItem>.
</PARA>
</SECT2>
<SECT2 ID="miprocessorident">
<TITLE>Processor Identification</TITLE>
<PARA>
</PARA>
</SECT2>
<SECT2 ID="miprocessorspecialflags">
<TITLE>Processor Specific Flags</TITLE>
<PARA>
</PARA>
</SECT2>
</SECT1>
</CHAPTER>

<CHAPTER ID=sections>
<TITLE>Sections</TITLE>
<PARA>
The Itanium architecture defines two processor-specific
section types, as described in
Chapter 4 of the Intel Itanium Processor-specific ABI. 
</PARA>
<SECT1 ID="specialsections">
<TITLE>Special Sections</TITLE>
<PARA>
The following sections are defined in the 
Intel Itanium Processor-specific ABI.
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
Section Types are described in the Intel &reg; Itanium &trade;
Processor specific ABI. LSB conforming implementations are not
required to use any sections in the range from
<SystemItem class="Constant">SHT_IA_64_LOPSREG</SystemItem> to
<SystemItem class="Constant">SHT_IA_64_HIPSREG</SystemItem>.
Additionally, LSB conforming implementations are not required
to support the
<SystemItem class="Constant">SHT_IA_64_PRIORITY_INIT</SystemItem>
section, beyond the gABI requirements for the handling of
unrecognized section types, linking them into a contiguous section
in the object file created by the static linker.
</PARA>
</SECT1>

<SECT1 ID="sectionattribflags">
<TITLE>Section Attribute Flags</TITLE>
<PARA>
</PARA>
</SECT1>

<SECT1 ID="specialsectiontypes">
<TITLE>Special Section Types</TITLE>
<PARA>
</PARA>
</SECT1>

</CHAPTER>

<CHAPTER ID=symboltable>
<TITLE>Symbol Table</TITLE>

<PARA>
If an executable file contains a reference to a function defined in
one of its associated shared objects, the symbol table section for
that file shall contain an entry for that symbol.  The 
<SystemItem class="Constant">st_shndx</SystemItem> member of that
symbol table
entry contains <SystemItem class="Constant">SHN_UNDEF</SystemItem>.
This signals to the dynamic linker that the symbol definition for that
function is not contained in the executable file itself.  If that symbol
has been allocated a procedure linkage table entry in the executable file,
and the <SystemItem class="Constant">st_value</SystemItem> member for
that symbol table entry is non-zero, the value shall contain the virtual
address of the first instruction of that procedure linkage table entry.
Otherwise, the <SystemItem class="Constant"> st_value</SystemItem> member
contains zero.  This procedure linkage table entry address is used by
the dynamic linker in resolving references to the address of the function.
<NOTE>
Need to add something here about st_info and st_other ...
</NOTE>
</PARA>

</CHAPTER>

<CHAPTER ID=relocation>
<TITLE>Relocation</TITLE>

<PARA>
LSB-conforming applications shall use Relocations as defined in
Chapter 4 of the Intel &reg; Itanium &trade; Processor specific
Application Binary Interface.
</PARA>

<SECT1 ID="relocationtypes">
<TITLE>Relocation Types</TITLE>
<PARA>
</PARA>
</SECT1>

</CHAPTER>

</PART>
