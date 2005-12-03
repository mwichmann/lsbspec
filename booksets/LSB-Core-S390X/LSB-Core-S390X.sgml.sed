<!DOCTYPE BOOK PUBLIC "-//OASIS//DTD DocBook V4.1//EN" [

<!entity % entities SYSTEM "../../entities">
<!entity elf-intro SYSTEM "../../ELF/S390X/intro/elfintro.sgml">
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

<BOOK>
<BOOKINFO>
<EDITION>&ISOSTD-8;</EDITION>
<TITLE>&spectitle &specversion</TITLE>
<COPYRIGHT>
<YEAR>2004</YEAR>
<YEAR>2005</YEAR>
<HOLDER>Free Standards Group</HOLDER>
</COPYRIGHT>
&legal;
</BOOKINFO>


&lsb-s390x-intro;
<PART ID=ELF-S390X>
<TITLE>Executable and Linking Format (ELF)</TITLE>
&elf-intro;
&elf-contents;
</PART>
&lsb-contents;
&packaging-contents;
&lsb-s390x-appA;
&fdl;

</BOOK>
