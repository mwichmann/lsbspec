<!DOCTYPE SET PUBLIC "-//OASIS//DTD DocBook V4.1//EN" [

<!entity % entities SYSTEM "../../entities">
<!entity elf-contents SYSTEM "../../book/ELF-generic/contents">
<!entity lsb-contents SYSTEM "../../book/LSB-generic/contents">
<!entity packaging-contents SYSTEM "../../book/Packaging/contents">
<!entity desktop-contents SYSTEM "../../book/Desktop/contents">

<!entity specversion "LSBVERSION">
<!entity spectitle "Linux Standard Base Core Specification">

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


<BOOK ID="Core-Intro">
<BOOKINFO>
<TITLE>Specification Introduction</TITLE>
</BOOKINFO>
&lsb-generic-intro;
</BOOK>
<BOOK ID="Core-ELF">
<BOOKINFO>
<TITLE>ELF Specification</TITLE>
</BOOKINFO>
&elf-contents;
</BOOK>
<BOOK ID="Core-LSB">
<BOOKINFO>
<TITLE>Linux Standard Base Specification</TITLE>
</BOOKINFO>
&lsb-contents;
&lsb-generic-appA;
</BOOK>
<BOOK ID="Core-Packaging">
<BOOKINFO>
<TITLE>Linux Packaging Specification</TITLE>
</BOOKINFO>
&packaging-contents;
</BOOK>

</SET>
