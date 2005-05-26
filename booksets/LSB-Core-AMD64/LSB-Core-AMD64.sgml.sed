<!DOCTYPE BOOK PUBLIC "-//OASIS//DTD DocBook V4.1//EN" [

<!entity % entities SYSTEM "../../entities">
<!entity elf-intro SYSTEM "../../ELF/AMD64/intro/elfintro.sgml">
<!entity elf-contents SYSTEM "../../book/ELF-AMD64/contents">
<!entity lsb-contents SYSTEM "../../book/LSB-AMD64/contents">
<!entity packaging-contents SYSTEM "../../book/Packaging-AMD64/contents">

<!entity specversion "LSBVERSION">
<!entity archspec "AMD64">
<!entity canonicalarch "AMD64">
<!entity specarchitecture "AMD64">
<!entity spectitle "Linux Standard Base Core Specification for AMD64">

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


&lsb-amd64-intro;
<PART ID=ELF-AMD64>
<TITLE>Executable and Linking Format (ELF)</TITLE>
&elf-intro;
&elf-contents;
</PART>
&lsb-contents;
&packaging-contents;
&lsb-amd64-appA;
&fdl;

</BOOK>
