<PART ID="tocobjformat">
<TITLE>Object Format</TITLE>

<CHAPTER ID=objfmt>
<TITLE>Object Files</TITLE>
<PARA>
LSB-conforming implementations shall support the object file Executable and Linking Format (ELF), which is defined by the following documents:
<ITEMIZEDLIST MARK=BULLET>
<LISTITEM>
<PARA>
System V Application Binary Interface, Edition 4.1
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
System V Application Binary Interface - DRAFT - April 29, 1998
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
this document
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
an architecture-specific LSB specification
</PARA>
</LISTITEM>
</ITEMIZEDLIST>
Conforming implementations may also support other unspecified object file formats.
</PARA>
</CHAPTER>

<CHAPTER ID=Sections>
<TITLE>Sections</TITLE>
<PARA>
</PARA>
<SECT1 ID="elftypes">
<TITLE>ELF Section Types</TITLE>
<PARA>
The following sections types are defined in the System V Application Binary
Interface, Edition 4.1.
<TABLE>
<TITLE>ELF Section Types</TITLE>
<TGROUP COLS=4>
include(elfsecttypes.sgml)
</TGROUP>
</TABLE>
</PARA>
</SECT1>
<SECT1 ID="linuxtypes">
<TITLE>Linux Section Types</TITLE>
<PARA>
The following Linux section types are defined here.
<TABLE>
<TITLE>Linux Section Types</TITLE>
<TGROUP COLS=2>
include(linuxsecttypes.sgml)
</TGROUP>
</TABLE>
</PARA>
</SECT1>
</CHAPTER>

<CHAPTER ID=SpecialSections>
<TITLE>Special Sections</TITLE>
<SECT1 ID="elfspecial">
<TITLE>ELF Special Sections</TITLE>
<PARA>
The following sections are defined in the ELF reference specification.
<TABLE>
<TITLE>ELF Special Sections</TITLE>
<TGROUP COLS=4>
include(elfsect.sgml)
</TGROUP>
</TABLE>
</PARA>
</SECT1>
<SECT1 ID="linuxspecial">
<TITLE>Linux Special Sections</TITLE>
<PARA>
The following Linux-specific sections are defined here.
<TABLE>
<TITLE>Linux Special Sections</TITLE>
<TGROUP COLS=2>
include(linuxsect.sgml)
</TGROUP>
</TABLE>
</PARA>
</SECT1>
</CHAPTER>

<CHAPTER ID=Symmap>
<TITLE>Symbol Mapping</TITLE>
<PARA>
This chapter defines how names are mapped from the source symbol to
the object symbol.
</PARA>
<SECT1 ID="cmapping">
<TITLE>C Language</TITLE>
<PARA>
External C symbols have the same names in C and object files' symbol tables.
</PARA>
</SECT1>
<SECT1 ID="cppmapping">
<TITLE>C++ Language</TITLE>
<PARA>
Because of the immaturity of the C++ ABI (for name mangling, exception
handling, and other such issues), we do not standardize any libraries
for C++ in this version of the Linux Standard Base.
<FOOTNOTE ID="static-cplusplus">
<PARA>
It seems to be possible, using existing Linux development tools, to write an
application in C++ which complies with this rule by linking statically 
with libstdc++ and all other libraries containing C++. The following command
illustrates how this may be accomplished:
</PARA>
<PARA>
<COMMAND>
g++ example.cc -Wl,-Bdynamic,-lc,-Bstatic 
</COMMAND>
</PARA>
</FOOTNOTE>
</PARA>
<PARA>
In a future version of this specification, name mangling rules will be
specified so that C++ symbols can be mapped into symbol names in the object
file.
</PARA>
</SECT1>
</CHAPTER>

<CHAPTER ID=SymVersion>
<TITLE>Symbol Versioning</TITLE>
<PARA>
This chapter describes the Symbol Versioning mechanism. All ELF objects may
provide or depend on versioned symbols. Symbol Versioning is implemented by 3
section types: SHT_GNU_versym, SHT_GNU_verdef, and SHT_GNU_verneed.
</PARA>
<PARA>
The term "Elfxx" means "Elf32" or "Elf64" depending on the architecture.
</PARA>
<PARA>
Versions are described by strings. The structures that are used for symbol
versions also contain a member that holds the ELF hashing values of the
strings. This allows for more efficient processing.
</PARA>
<SECT1 ID="symvertbl">
<TITLE>Symbol Version Table</TITLE>
<PARA>
The Symbol Version Table is contained in the special section <COMPUTEROUTPUT>
.gnu.version</COMPUTEROUTPUT> which has a section type of <COMPUTEROUTPUT>
SHT_GNU_versym</COMPUTEROUTPUT>. This section has the same number of entries
as the Dynamic Symbol Table.
</PARA>
<PARA>
This section contains an array of elements of type Elfxx_Half. Each entry
specifies the version defined for or required by the corresponding symbol in
the Dynamic Symbol Table.
</PARA>
<PARA>
The values in the Symbol Version Table are unique to the object in which
they are located. These values are identifiers that are provided by the
the <COMPUTEROUTPUT>vna_other</COMPUTEROUTPUT> member of the
<COMPUTEROUTPUT>Elfxx_Vernaux</COMPUTEROUTPUT> structure or the
<COMPUTEROUTPUT>vd_ndx</COMPUTEROUTPUT> member of the
<COMPUTEROUTPUT>Elfxx_Verdef</COMPUTEROUTPUT> structure.
</PARA>
<PARA>
The values 0 and 1 are reserved.
</PARA>
<VARIABLELIST>
<VARLISTENTRY>
<TERM>0</TERM>
<LISTITEM>
<PARA>
The symbol is local, not available outside the object.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM>1</TERM>
<LISTITEM>
<PARA>
The symbol is defined in this object and is globally available.
</PARA>
</LISTITEM>
</VARLISTENTRY>
</VARIABLELIST>
<PARA>
All other values are used to identify version strings located in one of the
other Symbol Version sections. The value itself is not the version associated
with the symbol. The string identified by the value defines the version of
the symbol.
</PARA>
</SECT1>
<SECT1 ID="symverdefs">
<TITLE>Version Definitions</TITLE>
<PARA>
Symbol definitions are contained in the special section <COMPUTEROUTPUT>
.gnu.version_d</COMPUTEROUTPUT> which has a section type of <COMPUTEROUTPUT>
SHT_GNU_verdef</COMPUTEROUTPUT>. The number of entries in this section
is contained in the <COMPUTEROUTPUT>DT_VERDEFNUM</COMPUTEROUTPUT> entry
of the Dynamic Section.  The <COMPUTEROUTPUT>sh_link</COMPUTEROUTPUT>
member of the section header points to the section that contains the strings
referenced by this section.
</PARA>
<FIGURE>
<TITLE>Version Definition Entries</TITLE>
<PROGRAMLISTING>
typedef struct {
	Elfxx_Half    vd_version;
	Elfxx_Half    vd_flags;
	Elfxx_Half    vd_ndx;
	Elfxx_Half    vd_cnt;
	Elfxx_Word    vd_hash;
	Elfxx_Word    vd_aux;
	Elfxx_Word    vd_next;
} Elfxx_Verdef;
</PROGRAMLISTING>
</FIGURE>
<VARIABLELIST>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vd_version</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
Version revision. This value is currently set to 1, and will be reset if the versioning implementation is incompatibly altered.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vd_flags</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
Version information flag bitmask.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vd_ndx</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
Version index numeric value referencing the SHT_GNU_versym section.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vd_cnt</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
Number of associated verdaux array entries.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vd_hash</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
Version name hash value (ELF hash function).
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vd_aux</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
Offset to a corresponding entry in the verdaux array, in bytes.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vd_next</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
Offset to the next verdef entry, in bytes.
</PARA>
</LISTITEM>
</VARLISTENTRY>
</VARIABLELIST>
<FIGURE>
<TITLE>Version Definition Auxiliary Entries</TITLE>
<PROGRAMLISTING>
typedef struct {
	Elfxx_Word    vda_name;
	Elfxx_Word    vda_next;
} Elfxx_Verdaux;
</PROGRAMLISTING>
</FIGURE>
<VARIABLELIST>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vda_name</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
Offset to the version or dependency name string in the section header, in bytes.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vda_next</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
Offset to the next verdaux entry, in bytes.
</PARA>
</LISTITEM>
</VARLISTENTRY>
</VARIABLELIST>
</SECT1>
<SECT1 ID="symverrqmts">
<TITLE>Version Requirements</TITLE>
<PARA>
Symbol definitions are contained in the special section <COMPUTEROUTPUT>
.gnu.version_r</COMPUTEROUTPUT> which has a section type of <COMPUTEROUTPUT>
SHT_GNU_verneed</COMPUTEROUTPUT>. The number of entries in this section
is contained in the <COMPUTEROUTPUT>DT_VERNEEDNUM</COMPUTEROUTPUT> entry
of the Dynamic Section.  The <COMPUTEROUTPUT>sh_link</COMPUTEROUTPUT>
member of the section header points to the section that contains the strings
referenced by this section.
</PARA><FIGURE>
<TITLE>Version Needed Entries</TITLE>
<PROGRAMLISTING>
typedef struct {
	Elfxx_Half    vn_version;
	Elfxx_Half    vn_cnt;
	Elfxx_Word    vn_file;
	Elfxx_Word    vn_aux;
	Elfxx_Word    vn_next;
} Elfxx_Verneed;
</PROGRAMLISTING>
</FIGURE>
<VARIABLELIST>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vn_version</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
Version of structure. This value is currently set to 1, and will be reset if the versioning implementation is incompatibly altered.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vn_cnt</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
Number of associated verneed array entries.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vn_file</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
Offset to the file name string in the section header, in bytes.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vn_aux</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
Offset to a corresponding entry in the vernaux array, in bytes.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vn_next</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
Offset to the next verneed entry, in bytes.
</PARA>
</LISTITEM>
</VARLISTENTRY>
</VARIABLELIST>
<FIGURE>
<TITLE>Version Needed Auxiliary Entries</TITLE>
<PROGRAMLISTING>
typedef struct {
	Elfxx_Word    vna_hash;
	Elfxx_Half    vna_flags;
	Elfxx_Half    vna_other;
	Elfxx_Word    vna_name;
	Elfxx_Word    vna_next;
} Elfxx_Vernaux;
</PROGRAMLISTING>
</FIGURE>
<VARIABLELIST>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vna_hash</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
Dependency name hash value (ELF hash function).
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vna_flags</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
Dependency information flag bitmask.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vna_other</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
Object file version identifier used in the .gnu.version symbol version array. Bit number 15 controls whether or not the object is hidden; if this bit is set, the object cannot be used and the static linker will ignore the symbol's presence in the object.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vna_name</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
Offset to the dependency name string in the section header, in bytes.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vna_next</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
Offset to the next vernaux entry, in bytes.
</PARA>
</LISTITEM>
</VARLISTENTRY>
</VARIABLELIST>
</SECT1>
<SECT1 ID="symstartseq">
<TITLE>Startup Sequence</TITLE>
<PARA>
When loading a sharable object, version definition data from the loaded object is analyzed to assure that it meets the version requirements of the calling object. The dynamic loader retrieves the entries in the caller's Elfxx_Verneed array and attempts to find matching definition information in the loaded Elfxx_Verdef table.
</PARA>
<PARA>
Each object and dependency is tested in turn. If a symbol definition is missing, the loader returns an error. A warning is issued instead of a hard error when the vna_flags bit for VER_FLG_WEAK is set in the Elfxx_Vernaux entry.
</PARA>
<PARA>
When the versions referenced by undefined symbols in the loaded object are found, version availability is certified. The test completes without error and the object is made available.
</PARA>
</SECT1>
<SECT1 ID="symresolution">
<TITLE>Symbol Resolution</TITLE>
<PARA>
When symbol versioning is used in an object, relocations extend the performance of definition testing beyond the simple match of symbol name strings: the version of the reference must also equal the name of the definition. The same index that is used in the symbol table can be referenced in the SHT_GNU_versym section, and the value of this index is then used to acquire name data. The corresponding requirement string is retrieved from the Elfxx_Verneed array, and likewise, the corresponding definition string from the Elfxx_Verdef table.
</PARA>
<PARA>
Bit number 15 of the version symbol controls whether or not the object is hidden; if this bit is set, the object cannot be used and the static linker will ignore the symbol's presence in the object.
</PARA>
<PARA>
Results differ in the interaction of objects that variously use symbol versioning.
<ITEMIZEDLIST MARK=BULLET>
<LISTITEM>
<PARA>
The object with the reference and the object with the definitions may both use versioning. All described matching is processed in this case. A fatal error is triggered when no matching definition can be found in the object whose name is the one referenced by the vn_name element in the Elfxx_Verneed entry.
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
The object with the reference may not use versioning, while the object with the definitions does. In this instance, only the definition with index numbers 1 and 2 will be used in the reference match, the same identified by the static linker as the base definition. In infrequent cases where the static linker was not used, as in calls to dlopen(), a version that does not have the base definition index is acceptable as long as it is the only version for which the symbol is defined.
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
The object with the reference may use versioning, but the object with the definitions specifies none. A matching symbol is accepted in this case. A fatal error is triggered in the unlikely event that a corruption in the required symbols list obscured an outdated object file and caused a match on the object filename in the Elfxx_Verneed entry.
</PARA>
</LISTITEM>
<LISTITEM>
<PARA>
Finally, both the object with the reference and the object with the definitions may not use versioning. The behavior in this instance defaults to pre-existing symbol rules.
</PARA>
</LISTITEM>
</ITEMIZEDLIST>
</PARA>
</SECT1>
</CHAPTER>
</PART>
