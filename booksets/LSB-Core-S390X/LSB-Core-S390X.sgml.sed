<!DOCTYPE BOOK PUBLIC "-//OASIS//DTD DocBook V4.1//EN" [

<!ENTITY % entities SYSTEM "../../entities">
<!ENTITY elf-intro SYSTEM "../../ELF/S390X/intro/elfintro.sgml">
<!ENTITY elf-contents SYSTEM "../../book/ELF-S390X/contents">
<!ENTITY lsb-contents SYSTEM "../../book/LSB-S390X/contents">
<!ENTITY packaging-contents SYSTEM "../../book/Packaging-S390X/contents">

<!ENTITY specversion "LSBVERSION">
<!ENTITY archspec "S390X">
<!ENTITY canonicalarch "S390X">
<!ENTITY specarchitecture "S390X">
<!ENTITY spectitle "Linux Standard Base Core Specification for S390X">

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
<EDITION>&ISOSTD-8;:&copyrightyear;(E)</EDITION>
<TITLE>&spectitle; &specversion;</TITLE>
<COPYRIGHT>
<YEAR>&copyrightyear;</YEAR>
<HOLDER>&copyrightholder;</HOLDER>
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
&license;

</BOOK>
