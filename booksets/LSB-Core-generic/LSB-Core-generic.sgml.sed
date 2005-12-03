<!DOCTYPE BOOK PUBLIC "-//OASIS//DTD DocBook V4.1//EN" [
<!ENTITY % funcprototype.element "IGNORE">
<!ELEMENT FuncPrototype - O (FuncDef, (Void | (ParamDef*, VarArgs?)))>

<!ENTITY % entities SYSTEM "../../entities">
<!ENTITY elf-intro SYSTEM "../../ELF/generic/intro/elfintro.sgml">
<!ENTITY elf-contents SYSTEM "../../book/ELF-generic/contents">
<!ENTITY lsb-contents SYSTEM "../../book/LSB-generic/contents">
<!ENTITY packaging-contents SYSTEM "../../book/Packaging-generic/contents">
<!ENTITY desktop-contents SYSTEM "../../book/Desktop/contents">

<!ENTITY specversion "LSBVERSION">
<!ENTITY spectitle "Linux Standard Base Core Specification">

%entities;

]>

<BOOK>
<BOOKINFO>
<TITLE>&spectitle &specversion</TITLE>
<EDITION>&ISOSTD-1;</EDITION>
<COPYRIGHT>
<YEAR>2004</YEAR>
<YEAR>2005</YEAR>
<HOLDER>Free Standards Group</HOLDER>
</COPYRIGHT>
&legal;
</BOOKINFO>


&lsb-generic-intro;
<PART ID=ELF-GENERIC>
<TITLE>Executable And Linking Format (ELF)</TITLE>
&elf-intro;
&elf-contents;
</PART>
&lsb-contents;
&packaging-contents;
&lsb-generic-appA;
&lsb-generic-appB;
&fdl;

</BOOK>
