<!DOCTYPE SET PUBLIC "-//OASIS//DTD DocBook V4.1//EN" [

<!entity % entities SYSTEM "../../entities">
<!entity elf-contents SYSTEM "../../book/ELF-S390/contents">
<!entity lsb-contents SYSTEM "../../book/LSB-S390/contents">
<!entity packaging-contents SYSTEM "../../book/Packaging-S390/contents">

<!entity specversion "LSBVERSION">
<!entity archspec "S390">
<!entity canonicalarch "S390">
<!entity specarchitecture "S390">
<!entity spectitle "Linux Standard Base Core Specification for S390">

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


<BOOK ID="s390-intro">
<BOOKINFO>
<TITLE>Specification Introduction</TITLE>
</BOOKINFO>
&lsb-s390-intro;
</BOOK>
<BOOK ID="s390-elf">
<BOOKINFO>
<TITLE>ELF Specification</TITLE>
</BOOKINFO>
&elf-contents;
</BOOK>
<BOOK ID="s390-lsb">
<BOOKINFO>
<TITLE>Linux Standard Base Specification</TITLE>
</BOOKINFO>
&lsb-contents;
&lsb-s390-appA;
</BOOK>
<BOOK ID="s390-packaging">
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
