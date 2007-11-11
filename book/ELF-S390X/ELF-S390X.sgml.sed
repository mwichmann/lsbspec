<!DOCTYPE BOOK PUBLIC "-//OASIS//DTD DocBook V4.1//EN" [

<!ENTITY % entities SYSTEM "SPECSRC/entities">
<!ENTITY contents SYSTEM "contents">

<!ENTITY specversion "ELFVERSION">
<!ENTITY archspec "S390X">
<!ENTITY canonicalarch "S390X">
<!ENTITY specarchitecture "S390X">
<!ENTITY spectitle "ELF Specification for the S390X Architecture"
>

%entities;

<!ENTITY copyrightyear "2007">
<!ENTITY copyrightholder "Linux Foundation">
<!ENTITY license "&fdl;">
<!ENTITY doccopyright SYSTEM "SPECSRC/matters/fsgcopyright.sgml">

]>

<BOOK>
<BOOKINFO>
<TITLE>&spectitle &specversion</TITLE>
<COPYRIGHT>
<YEAR>&copyrightyear;</YEAR>
<HOLDER>&copyrightholder;</HOLDER>
</COPYRIGHT>
&legal;
</BOOKINFO>

&elf-s390x-intro;
<PART ID=ELF-S390X>
<TITLE>Executable and Linking Format (ELF)</TITLE>
&contents;
</PART>
&fdl;

</BOOK>
