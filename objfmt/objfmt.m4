<PART ID="tocobjformat">
<TITLE>Object Format</TITLE>

<CHAPTER ID=objfmt>
<TITLE>Object Files</TITLE>
<PARA>
Executable files shall use the ELF format as defined by Toolkit Interface
Standard (TIS) Executable and Linking Format (ELF) and as supplimented by
this document.
</PARA>
</CHAPTER>

<CHAPTER ID=Sections>
<TITLE>Sections</TITLE>
<PARA>
</PARA>
<SECT1 ID="elftypes">
<TITLE>ELF Section Types</TITLE>
<PARA>
The following sections types are defined in the ELF reference Specification.
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
<PARA>
</PARA>
<SECT1 ID="elfspecial">
<TITLE>ELF Special Sections</TITLE>
<PARA>
The following sections are defined in the ELF reference Specification.
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
The following Linux specific sections are defined here.
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
Unless otherwise specificed as a Mangle, external C symbols have the same
names in C and object files' symbol tables.
</PARA>
</SECT1>
<SECT1 ID="cppmapping">
<TITLE>C++ Language</TITLE>
<PARA>
Because of the immaturity of C++ ABI's (for name mangling, exception
handling, and other such issues), we do not standardize any C++
libraries.  It seems to be possible, using existing Linux development
tools, to write an application in C++ which complies with this rule by
linking statically (or shipping a .so with the application) libstdc++
and libgcc.
<NOTE>
<PARA>
We do need to specify some mechanisms, such as global constructors and
destructors.  But that is much easier than a
full C++ ABI.
</PARA>
<PARA>
Constructors and destructors are .ctor and .dtor, FIXME how do these
differ from .init and .fini and who is going to write the spec for
them?).  FIXME: what about .eh_frame?  Do we need to specify them and
if so, likewise.
</PARA>
</NOTE>
<NOTE>
<PARA>
In a future version of this specification, name mangling rules will be
specified so that C++ symbols can be mapped into symbol names in the object
file.
</PARA>
</NOTE>
</PARA>
</SECT1>
</CHAPTER>

<CHAPTER ID=SymVersion>
<TITLE>Symbol Versioning</TITLE>
<PARA>
This chapter describes the Symbol Versioning mechanism. All ELF objects may
provide or depend on versioned symbols. Symbol Versioning is implemented by 3
section types: SHT_GNU_VERSYM, SHT_GNU_VERDEF, and SHT_GNU_VERNEED.
</PARA>
<PARA>
The term "elfxx" means "elf32", "elf64" or another value based on the
architecture.
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
SHT_GNU_VERSYM</COMPUTEROUTPUT>. This section has the same number of entries
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
SHT_GNU_VERDEF</COMPUTEROUTPUT>. The number of entries in this section
is contained in the <COMPUTEROUTPUT>DT_VERDEFNUM</COMPUTEROUTPUT> entry
of the Dynamic Section.  The <COMPUTEROUTPUT>sh_link</COMPUTEROUTPUT>
member of the section header points to the section that contain the strings
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
This field currently always has the value 1.  It will be changed if
the versioning implementation has to be changed in an incompatible way.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vd_flags</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
This field contains a bitmask of flags.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vd_ndx</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
This is a numeric value which is used as an index into the SHT_GNU_versym
section.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vd_cnt</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
The element specifies the number of associated auxiliary entries.  These
auxiliary entries contain the actual version definition.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vd_hash</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
Hash value of the name (computed using the ELF hash function)
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vd_aux</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
Offset in bytes to the corresponding auxiliary entries.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vd_next</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
Offset in bytes to the next version definition.
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
This is an index into the string section referenced in the section header
to the point where the name string can be found.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vda_next</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
Byte offset to the next Elfxx_Verdaux entry.  The first entry (pointed to
by the Elfxx_Verdef entry, contains the actual defined name.  The second
and all later entries name predecessor versions.
</PARA>
</LISTITEM>
</VARLISTENTRY>
</VARIABLELIST>
</SECT1>
<SECT1 ID="symverrqmts">
<TITLE>Version Requirments</TITLE>
<PARA>
Symbol definitions are contained in the special section <COMPUTEROUTPUT>
.gnu.version_r</COMPUTEROUTPUT> which has a section type of <COMPUTEROUTPUT>
SHT_GNU_VERNEED</COMPUTEROUTPUT>. The number of entries in this section
is contained in the <COMPUTEROUTPUT>DT_VERNEEDNUM</COMPUTEROUTPUT> entry
of the Dynamic Section.  The <COMPUTEROUTPUT>sh_link</COMPUTEROUTPUT>
member of the section header points to the section that contain the strings
referenced by this section.
</PARA>
<FIGURE>
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
This field currently always has the value 1.  It will be changed if
the versioning implementation has to be changed in an incompatible way.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vn_cnt</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
The element specifies the number of associated auxiliary entries. These
auxiliary entries contain the actual version definition.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vn_file</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
Offset in the string section reference by the link in the section header
for the string with the file name.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vn_aux</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
Offset in bytes to the corresponding auxiliary entries.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vn_next</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
Offset in bytes to the next version dependency record.
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
Hash value (computed using the ELF hashing function) for the name
referenced by vna_name.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vna_flags</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
Bitmask of flags.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vna_other</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
Contains version identifier which is unique for the object file. This is
the identifier which is used in the Symbol Version Table containd in the
.gnu.version section. If the highest bit (bit 15) is set this is a hidden
symbol which cannot be referenced from outside the object.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vna_name</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
This is an index into the string section referenced in the section header
to the point where the name string can be found.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><COMPUTEROUTPUT>vna_next</COMPUTEROUTPUT></TERM>
<LISTITEM>
<PARA>
Byte offset to the next Elfxx_Verdaux entry.  The first entry (pointed to
by the Elfxx_Verdef entry, contains the actual defined name.  The second
and all later entries name predecessor versions.
</PARA>
</LISTITEM>
</VARLISTENTRY>
</VARIABLELIST>
</SECT1>
<SECT1 ID="symstartseq">
<TITLE>Startup Sequence</TITLE>
<PARA>
After loading a shared object (but before making it generally
available) the dynamic loader has to check whether the loaded object
fulfills all the version requirements of the object which caused it to
be loaded.  This has to be done by walking through all the entries of the
loading object's Elfxx_Verneed array and examining whether the loaded object's
Elfxx_Verdef array contains an appropriate version definition. 
</PARA>
<PARA>
These tests have to be recursively performed for all objects and their
dependencies.
</PARA>
<NOTE>
<PARA>
Is this recursion depth first or breadth first? Does it follow the same rules
as regular symbol resolution & initialization?
</PARA>
</NOTE>
<PARA>
There is one situation where a missing symbol definition is not an
error.  This is when the vna_flags in the Elfxx_Vernaux entry has the
VER_FLG_WEAK bit set.  In this case only a warning is issued and the
object is used normally.
</PARA>
<PARA>
Once all the tests for availability of the versions are performed
successfully the object can be made available publicly.  If the
loaded objects contains no invalidly formed data this means that all
versions referenced by undefined symbols are available.
</PARA>
</SECT1>
<SECT1 ID="symresolution">
<TITLE>Symbol Resolution</TITLE>
<PARA>
During the relocations in an object using symbol versioning we have to
extend the test for a matching definition.  Not only is it now
required that the strings with the symbol names are matching, it is
now also required that the version name of the reference is the same
as the name of the definition.  To retrieve the names uses the same
index as for the symbol table (both requirement and definition) and
retrieves a value from the SHT_GNU_versym section.  This section then
can be used to get a string from the Elfxx_Verneed entries (for the
requirement) and the Elfxx_Verdef entries (for the definition).
</PARA>
<PARA>
If the highest bit (no. 15) of the version symbol value is set, the
object is hidden and must not be used.  In this case the linker must
treat the symbol as not present in the object.
</PARA>
<PARA>
Ideally both, the file having the requirement and the file with the
definitions, are using symbol versioning.  In this case the above
matching must happen.  In the case there is no matching definition in
the currently searched object but the object is the one with the name
from the Elfxx_Verneed entry (referenced by the vn_name element), then
the missing of the symbol is a fatal error.  An object must not simply
loose the definition of a symbol.
</PARA>
<PARA>
In case only the object file with the reference does not use
versioning but the object with the definition does, then the reference
only matches the base definition.  The base definition is the one with
index numbers 1 and 2 (1 is the unspecified name, 2 is the name given
later to the baseline of symbols once the library started using symbol
versioning).  The static linker is guaranteed to use this indeces for
the base definition.  If there is no symbol definition with such an
version index and there is exactly one version for which this symbol
is defined, then this version is accepted (this was mostly implemented
for dlopen() calls as it will normally not happen when the static
linker is used).  Otherwise, if more then one version of the symbol is
available, none of the definitions is accepted and the search
continues with the next object.
</PARA>
<PARA>
The last case is if the object with the references uses symbol
versions but the object with the definitions has none.  In this case a
matching symbol is accepted unless the object's name matches the one
in the Elfxx_Verneed entry.  In the latter case this is a fatal error.
In fact, this should never have happened in the first place since it
would mean the list of required symbols was not correct and the steps
required in the last section therefore haven't detected a too old
version of an object file.
</PARA>
<PARA>
The case with two non-versioned object is not new and simply is
resolved according to existing rules.
</PARA>
</SECT1>
</CHAPTER>
</PART>
