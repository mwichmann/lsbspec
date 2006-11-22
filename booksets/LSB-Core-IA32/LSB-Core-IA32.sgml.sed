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

<!ENTITY % iso "IGNORE">
<![%iso;[
<!ENTITY % fsg "IGNORE">
<!ENTITY copyrightyear "2006">
<!ENTITY copyrightholder "ISO/IEC">
<!ENTITY license "">
<!ENTITY doccopyright SYSTEM "../../matters/isocopyright.sgml">
]]>
<!ENTITY % fsg "INCLUDE">
<![%fsg;[
<!ENTITY copyrightyear "2005">
<!ENTITY copyrightholder "Free Standards Group">
<!ENTITY license "&fdl;">
<!ENTITY doccopyright SYSTEM "../../matters/fsgcopyright.sgml">
]]>

]>

<BOOK>
<BOOKINFO>
<EDITION>&ISOSTD-2;:&copyrightyear;(E)</EDITION>
<TITLE>&spectitle &specversion</TITLE>
<COPYRIGHT>
<YEAR>&copyrightyear;</YEAR>
<HOLDER>&copyrightholder;</HOLDER>
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
&license;
</BOOK>
