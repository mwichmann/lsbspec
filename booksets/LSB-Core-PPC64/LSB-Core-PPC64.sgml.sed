<!DOCTYPE BOOK PUBLIC "-//OASIS//DTD DocBook V4.1//EN" [

<!entity % entities SYSTEM "../../entities">
<!entity elf-intro SYSTEM "../../ELF/PPC64/intro/elfintro.sgml">
<!entity elf-contents SYSTEM "../../book/ELF-PPC64/contents">
<!entity lsb-contents SYSTEM "../../book/LSB-PPC64/contents">
<!entity packaging-contents SYSTEM "../../book/Packaging-PPC64/contents">

<!entity specversion "LSBVERSION">
<!entity archspec "PPC64">
<!entity canonicalarch "PPC64">
<!entity specarchitecture "PPC64">
<!entity spectitle "Linux Standard Base Core Specification for PPC64">

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


&lsb-ppc64-intro;
<PART ID=ELF-PPC64>
<TITLE>Executable and Linking Format (ELF)</TITLE>
&elf-intro;
&elf-contents;
</PART>
&lsb-contents;
&packaging-contents;
&lsb-ppc64-appA;
&fdl;

</BOOK>
