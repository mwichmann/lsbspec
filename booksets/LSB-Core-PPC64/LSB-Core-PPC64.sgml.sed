<!DOCTYPE SET PUBLIC "-//OASIS//DTD DocBook V4.1//EN" [

<!entity % entities SYSTEM "../../entities">
<!entity elf-contents SYSTEM "../../book/ELF-PPC64/contents">
<!entity lsb-contents SYSTEM "../../book/LSB-PPC64/contents">
<!entity packaging-contents SYSTEM "../../book/Packaging-PPC64/contents">

<!entity specversion "LSBVERSION">
<!entity archspec "PPC64">
<!entity canonicalarch "PPC64">
<!entity specarchitecture "PPC64">
<!entity spectitle "Linux Standard Base Core Module Specification for PPC64">

%entities;

]>

<SET>
<SETINFO>
<TITLE>&spectitle &specversion</TITLE>
<COPYRIGHT>
<YEAR>2004</YEAR>
<HOLDER>Free Standards Group</HOLDER>
</COPYRIGHT>
&legal;
</SETINFO>


<BOOK ID="ppc64-intro">
<BOOKINFO>
<TITLE>Specification Introduction</TITLE>
</BOOKINFO>
&lsb-ppc64-intro;
</BOOK>
<BOOK ID="ppc64-elf">
<BOOKINFO>
<TITLE>ELF Specification</TITLE>
</BOOKINFO>
&elf-contents;
</BOOK>
<BOOK ID="ppc64-lsb">
<BOOKINFO>
<TITLE>Linux Standard Base Specification</TITLE>
</BOOKINFO>
&lsb-contents;
&lsb-ppc64-appA;
</BOOK>
<BOOK ID="ppc64-packaging">
<BOOKINFO>
<TITLE>Linux Packaging Specification</TITLE>
</BOOKINFO>
&packaging-contents;
</BOOK>

</SET>
