<!DOCTYPE SET PUBLIC "-//OASIS//DTD DocBook V4.1//EN" [

<!entity % entities SYSTEM "../../entities">
<!entity elf-contents SYSTEM "../../book/ELF-AMD64/contents">
<!entity lsb-contents SYSTEM "../../book/LSB-AMD64/contents">
<!entity packaging-contents SYSTEM "../../book/Packaging-AMD64/contents">

<!entity specversion "LSBVERSION">
<!entity archspec "AMD64">
<!entity canonicalarch "AMD64">
<!entity specarchitecture "AMD64">
<!entity spectitle "Linux Standard Base Core Module Specification for AMD64">

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


<BOOK>
<BOOKINFO>
<TITLE>Specification Introduction</TITLE>
</BOOKINFO>
&lsb-amd64-intro;
</BOOK>
<BOOK>
<BOOKINFO>
<TITLE>ELF Specification</TITLE>
</BOOKINFO>
&elf-contents;
</BOOK>
<BOOK>
<BOOKINFO>
<TITLE>Linux Standard Base Specification</TITLE>
</BOOKINFO>
&lsb-contents;
&lsb-amd64-appA;
</BOOK>
<BOOK>
<BOOKINFO>
<TITLE>Linux Packaging Specification</TITLE>
</BOOKINFO>
&packaging-contents;
</BOOK>

</SET>
