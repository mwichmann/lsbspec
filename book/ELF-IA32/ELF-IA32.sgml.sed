<!DOCTYPE BOOK PUBLIC "-//OASIS//DTD DocBook V4.1//EN" [

<!ENTITY % entities SYSTEM "SPECSRC/entities">
<!ENTITY contents SYSTEM "contents">

<!ENTITY specversion "ELFVERSION">
<!ENTITY archspec "IA32">
<!ENTITY canonicalarch "IA32">
<!ENTITY specarchitecture "IA32">
<!ENTITY spectitle "ELF Specification for the IA32 Architecture"
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

&elf-ia32-intro;
<PART ID=ELF-IA32>
<TITLE>Executable and Linking Format (ELF)</TITLE>
&contents;
</PART>
&fdl;

</BOOK>
