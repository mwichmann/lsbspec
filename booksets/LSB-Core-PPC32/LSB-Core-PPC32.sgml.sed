<!DOCTYPE SET PUBLIC "-//OASIS//DTD DocBook V4.1//EN" [

<!entity % entities SYSTEM "../../entities">
<!entity elf-contents SYSTEM "../../book/ELF-PPC32/contents">
<!entity lsb-contents SYSTEM "../../book/LSB-PPC32/contents">
<!entity packaging-contents SYSTEM "../../book/Packaging-PPC32/contents">

<!entity specversion "LSBVERSION">
<!entity archspec "PPC32">
<!entity canonicalarch "PPC32">
<!entity specarchitecture "PPC32">
<!entity spectitle "Linux Standard Base Core Specification for PPC32">

%entities;

]>

<SET>
<SETINFO>
<TITLE>&spectitle &specversion</TITLE>
<COPYRIGHT>
<YEAR>2004</YEAR>
<YEAR>2005</YEAR>
<HOLDER>Free Standards Group</HOLDER>
</COPYRIGHT>
&legal;
</SETINFO>


<BOOK ID="ppc32-intro">
<BOOKINFO>
<TITLE>Specification Introduction</TITLE>
</BOOKINFO>
&lsb-ppc32-intro;
</BOOK>
<BOOK ID="ppc32-elf">
<BOOKINFO>
<TITLE>ELF Specification</TITLE>
</BOOKINFO>
&elf-contents;
</BOOK>
<BOOK ID="ppc32-lsb">
<BOOKINFO>
<TITLE>Linux Standard Base Specification</TITLE>
</BOOKINFO>
&lsb-contents;
&lsb-ppc32-appA;
</BOOK>
<BOOK ID="ppc32-packaging">
<BOOKINFO>
<TITLE>Linux Packaging Specification</TITLE>
</BOOKINFO>
&packaging-contents;
</BOOK>
<BOOK ID="licensing">
<BOOKINFO>
<TITLE>Free Documentation License</TITLE>
</BOOKINFO>
&fdl;
</BOOK>

</SET>
