<!DOCTYPE SET PUBLIC "-//OASIS//DTD DocBook V4.1//EN" [

<!entity % entities SYSTEM "../../entities">
<!entity elf-contents SYSTEM "../../book/ELF-S390X/contents">
<!entity lsb-contents SYSTEM "../../book/LSB-S390X/contents">
<!entity packaging-contents SYSTEM "../../book/Packaging-S390X/contents">

<!entity specversion "LSBVERSION">
<!entity archspec "S390X">
<!entity canonicalarch "S390X">
<!entity specarchitecture "S390X">
<!entity spectitle "Linux Standard Base Core Specification for S390X">

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


<BOOK ID="s390x-intro">
<BOOKINFO>
<TITLE>Specification Introduction</TITLE>
</BOOKINFO>
&lsb-s390x-intro;
</BOOK>
<BOOK ID="s390x-elf">
<BOOKINFO>
<TITLE>ELF Specification</TITLE>
</BOOKINFO>
&elf-contents;
</BOOK>
<BOOK ID="s390x-lsb">
<BOOKINFO>
<TITLE>Linux Standard Base Specification</TITLE>
</BOOKINFO>
&lsb-contents;
&lsb-s390x-appA;
</BOOK>
<BOOK ID="s390x-packaging">
<BOOKINFO>
<TITLE>Linux Packaging Specification</TITLE>
</BOOKINFO>
&packaging-contents;
</BOOK>

</SET>
