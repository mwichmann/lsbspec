<!DOCTYPE BOOK PUBLIC "-//OASIS//DTD DocBook V4.1//EN" [

<!entity % entities SYSTEM "../../entities">
<!entity elf-intro SYSTEM "../../ELF/IA32/intro/elfintro.sgml">
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


&lsb-ia32-intro;
<PART ID=ELF-IA32>
<TITLE>Executable and Linking Format (ELF)</TITLE>
&elf-intro;
&elf-contents;
</PART>
&lsb-contents;
&packaging-contents;
&lsb-ia32-appA;
&fdl;
</BOOK>
