<PART>
<TITLE>Object Format</TITLE>

<CHAPTER id=objfmt>
<TITLE>Object Files</TITLE>
<PARA>
Executable files shall use the ELF format as defined by Toolkit Interface
Standard (TIS) Executable and Linking Format (ELF) and as supplimented by
this document.
</PARA>
</CHAPTER>

<CHAPTER id=Sections>
<TITLE>Sections</TITLE>
<PARA>
</PARA>
<SECT1>
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
<SECT1>
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

<CHAPTER id=SpecialSections>
<TITLE>Special Sections</TITLE>
<PARA>
</PARA>
<SECT1>
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
<SECT1>
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

<CHAPTER id=Symmap>
<TITLE>Symbol Mapping</TITLE>
<PARA>
This chapter defines how names are mapped from the source symbol to
the object symbol.
</PARA>
<SECT1>
<TITLE>C Language</TITLE>
<PARA>
Unless otherwise specificed as a Mangle, external C symbols have the same
names in C and object files' symbol tables.
</PARA>
</SECT1>
<SECT1>
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
destructors (.ctor and .dtor I think).  But that is much easier than a
full C++ ABI.
</PARA>
</NOTE>
</PARA>
</SECT1>
</CHAPTER>
</PART>
