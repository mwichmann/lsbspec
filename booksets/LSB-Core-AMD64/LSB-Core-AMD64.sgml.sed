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
<EDITION>&ISOSTD-4;</EDITION>
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
