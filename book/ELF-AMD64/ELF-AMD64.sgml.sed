<!DOCTYPE BOOK PUBLIC "-//OASIS//DTD DocBook V4.1//EN" [

<!ENTITY % entities SYSTEM "SPECSRC/entities">
<!ENTITY contents SYSTEM "contents">

<!ENTITY specversion "ELFVERSION">
<!ENTITY archspec "AMD64">
<!ENTITY canonicalarch "AMD64">
<!ENTITY specarchitecture "AMD64">
<!ENTITY spectitle "ELF Specification for the AMD64 Architecture"
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

&elf-amd64-intro;
<PART ID=ELF-AMD64>
<TITLE>Executable and Linking Format (ELF)</TITLE>
&contents;
</PART>
&fdl;

</BOOK>
