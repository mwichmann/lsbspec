<!DOCTYPE BOOK PUBLIC "-//OASIS//DTD DocBook V4.1//EN" [

<!entity % entities SYSTEM "../../entities">
<!entity elf-intro SYSTEM "../../ELF/S390/intro/elfintro.sgml">
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

<BOOK>
<BOOKINFO>
<TITLE>&spectitle &specversion</TITLE>
<COPYRIGHT>
<YEAR>2004</YEAR>
<YEAR>2005</YEAR>
<HOLDER>Free Standards Group</HOLDER>
</COPYRIGHT>
&legal;
</BOOKINFO>


&lsb-s390-intro;
<PART>
<TITLE>Executable and Linking Format (ELF)</TITLE>
&elf-intro;
&elf-contents;
</PART>
&lsb-contents;
&packaging-contents;
&lsb-s390-appA;
&fdl;

</BOOK>
