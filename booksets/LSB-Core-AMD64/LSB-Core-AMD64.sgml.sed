<!DOCTYPE BOOK PUBLIC "-//OASIS//DTD DocBook V4.1//EN" [

<!ENTITY % entities SYSTEM "../../entities">
<!ENTITY elf-intro SYSTEM "../../ELF/AMD64/intro/elfintro.sgml">
<!ENTITY elf-contents SYSTEM "../../book/ELF-AMD64/contents">
<!ENTITY lsb-contents SYSTEM "../../book/LSB-AMD64/contents">
<!ENTITY packaging-contents SYSTEM "../../book/Packaging-AMD64/contents">

<!ENTITY specversion "LSBVERSION">
<!ENTITY archspec "AMD64">
<!ENTITY canonicalarch "AMD64">
<!ENTITY specarchitecture "AMD64">
<!ENTITY spectitle "Linux Standard Base Core Specification for AMD64">

%entities;

<!ENTITY % iso "IGNORE">
<![%iso;[
<!ENTITY % fsg "IGNORE">
<!ENTITY copyrightyear "2006">
<!ENTITY license "">
<!ENTITY doccopyright SYSTEM "../../matters/isocopyright.sgml">
<!ENTITY copyrightholder "ISO/IEC">
]]>
<!ENTITY % fsg "INCLUDE">
<![%fsg;[
<!ENTITY copyrightyear "2005">
<!ENTITY license "&fdl;">
<!ENTITY doccopyright SYSTEM "../../matters/fsgcopyright.sgml">
<!ENTITY copyrightholder "Free Standards Group">
]]>
]>

<BOOK>
<BOOKINFO>
<EDITION>&ISOSTD-4;:&copyrightyear;(E)</EDITION>
<TITLE>&spectitle; &specversion;</TITLE>
<COPYRIGHT>
<YEAR>&copyrightyear;</YEAR>
<HOLDER>&copyrightholder;</HOLDER>
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
&license;

</BOOK>
