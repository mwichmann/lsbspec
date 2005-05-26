<!DOCTYPE BOOK PUBLIC "-//OASIS//DTD DocBook V4.1//EN" [

<!entity % entities SYSTEM "../../entities">
<!entity elf-intro SYSTEM "../../ELF/PPC32/intro/elfintro.sgml">
<!entity elf-contents SYSTEM "../../book/ELF-PPC32/contents">
<!entity lsb-contents SYSTEM "../../book/LSB-PPC32/contents">
<!entity packaging-contents SYSTEM "../../book/Packaging-PPC32/contents">

<!entity specversion "LSBVERSION">
<!entity archspec "PPC32">
<!entity canonicalarch "PPC32">
<!entity specarchitecture "PPC32">
<!entity spectitle "Linux Standard Base Core Specification for PPC32">

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


&lsb-ppc32-intro;
<PART ID=ELF-PPC32>
<TITLE>Executable And Linking Format (ELF)</TITLE>
&elf-intro;
&elf-contents;
</PART>
&lsb-contents;
&packaging-contents;
&lsb-ppc32-appA;
&fdl;

</BOOK>
