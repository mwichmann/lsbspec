<!DOCTYPE SET PUBLIC "-//OASIS//DTD DocBook V4.1//EN" [

<!entity % entities SYSTEM "../../entities">
<!entity elf-contents SYSTEM "../../book/ELF-IA32/contents">
<!entity lsb-contents SYSTEM "../../book/LSB-IA32/contents">
<!entity packaging-contents SYSTEM "../../book/Packaging-IA32/contents">

<!entity specversion "LSBVERSION">
<!entity archspec "IA32">
<!entity canonicalarch "IA32">
<!entity specarchitecture "IA32">
<!entity spectitle "Linux Standard Base Core Specification for IA32">

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


<BOOK ID="ia32-intro">
<BOOKINFO>
<TITLE>Specification Introduction</TITLE>
</BOOKINFO>
&lsb-ia32-intro;
</BOOK>
<BOOK ID="ia32-elf">
<BOOKINFO>
<TITLE>ELF Specification</TITLE>
</BOOKINFO>
&elf-contents;
</BOOK>
<BOOK ID="ia32-lsb">
<BOOKINFO>
<TITLE>Linux Standard Base Specification</TITLE>
</BOOKINFO>
&lsb-contents;
&lsb-ia32-appA;
</BOOK>
<BOOK ID="ia32-packaging">
<BOOKINFO>
<TITLE>Linux Packaging Specification</TITLE>
</BOOKINFO>
&packaging-contents;
</BOOK>
<BOOK>
<BOOKINFO>
<TITLE>Free Documentation License</TITLE>
</BOOKINFO>
&fdl;
</BOOK>

</SET>
