<!DOCTYPE BOOK PUBLIC "-//OASIS//DTD DocBook V4.1//EN" [

<!entity % entities SYSTEM "../../entities">
<!entity elf-intro SYSTEM "../../ELF/IA64/intro/elfintro.sgml">
<!entity elf-contents SYSTEM "../../book/ELF-IA64/contents">
<!entity lsb-contents SYSTEM "../../book/LSB-IA64/contents">
<!entity packaging-contents SYSTEM "../../book/Packaging-IA64/contents">

<!entity specversion "LSBVERSION">
<!entity archspec "IA64">
<!entity canonicalarch "IA64">
<!entity specarchitecture "Itanium&trade;">
<!entity spectitle "Linux Standard Base Core Specification for IA64">

<!entity itanium "Itanium&trade;">
<!ENTITY w "<emphasis>w</emphasis>">

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
<EDITION>&ISOSTD-3;</EDITION>
<TITLE>&spectitle &specversion</TITLE>
<COPYRIGHT>
<YEAR>&copyrightyear;</YEAR>
<HOLDER>&copyrightholder;</HOLDER>
</COPYRIGHT>
&legal;
</BOOKINFO>


&lsb-ia64-intro;
<PART ID=ELF-IA64>
<TITLE>Executable and Linking Format (ELF)</TITLE>
&elf-intro;
&elf-contents;
</PART>
&lsb-contents;
&packaging-contents;
&lsb-ia64-appA;
&license;

</BOOK>
