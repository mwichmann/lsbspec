<PART ID="tocobjformat">
<TITLE>Object Format</TITLE>

<PARTINTRO>
<PARA>
Some additional Sections, beyond what was defined for LSB 1.3, are present on some architectures.
For C++ applications, the frame unwinding data uses some opcodes beyond those defined in the DWARF
<FOOTNOTE ID="std.DWARF2"
XREFLABEL="DWARF Debugging Information Format, Revision 2.0.0 (July 27, 1993)">
<PARA>
DWARF Debugging Information Format, Revision 2.0.0 (July 27, 1993)
</PARA>
</FOOTNOTE>
Specification.
</PARA>
</PARTINTRO>

<CHAPTER ID=SpecialSections>
<TITLE>Special Sections</TITLE>
<SECT1 ID="elfspecial">
<TITLE>Special Sections</TITLE>
<PARA>
</PARA>
<SECT2>
<TITLE>IA64 Additional Special Sections</TITLE>
<PARA>
The IA64 architecture also specifies the .opd section.
</PARA>
include(ia64sect.sgml)
</SECT2>
<SECT2>
<TITLE>PPC32 Additional Special Sections</TITLE>
<PARA>
The PPC32 architecture also specifies the .sbss and .sdata2 sections.
</PARA>
include(ppc32sect.sgml)
</SECT2>
</SECT1>
</CHAPTER>

include(../../gLSB/objfmt/dwarfext.sgml)

</PART>
