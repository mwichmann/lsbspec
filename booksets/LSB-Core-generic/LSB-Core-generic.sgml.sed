<!DOCTYPE BOOK PUBLIC "-//OASIS//DTD DocBook V4.1//EN" [
<!ENTITY % funcprototype.element "IGNORE">
<!ELEMENT FuncPrototype - O (FuncDef, (Void | (ParamDef*, VarArgs?)))>

<!ENTITY % entities SYSTEM "../../entities">
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
<COPYRIGHT>
<YEAR>2004</YEAR>
<YEAR>2005</YEAR>
<HOLDER>Free Standards Group</HOLDER>
</COPYRIGHT>
&legal;
</BOOKINFO>


&lsb-generic-intro;
&elf-contents;
&lsb-contents;
&packaging-contents;
&lsb-generic-appA;
&fdl;

</BOOK>
