<!DOCTYPE BOOK PUBLIC "-//OASIS//DTD DocBook V4.1//EN" [

<!entity % entities SYSTEM "../../entities">
<!entity elf-intro SYSTEM "../../ELF/S390/intro/elfintro.sgml">
<!entity elf-contents SYSTEM "../../book/ELF-S390/contents">
<!entity lsb-contents SYSTEM "../../book/LSB-S390/contents">
<!entity packaging-contents SYSTEM "../../book/Packaging-S390/contents">

<!entity specversion "LSBVERSION">
<!entity archspec "S390">
<!entity canonicalarch "S390">
<!entity specarchitecture "S390">
<!entity spectitle "Linux Standard Base Core Specification for S390">

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
<EDITION>&ISOSTD-7;</EDITION>
<TITLE>&spectitle; &specversion;</TITLE>
<COPYRIGHT>
<YEAR>&copyrightyear;</YEAR>
<HOLDER>&copyrightholder;</HOLDER>
</COPYRIGHT>
&legal;
</BOOKINFO>


&lsb-s390-intro;
<PART ID=ELF-S390>
<TITLE>Executable and Linking Format (ELF)</TITLE>
&elf-intro;
&elf-contents;
</PART>
&lsb-contents;
&packaging-contents;
&lsb-s390-appA;
&license;

</BOOK>
