<!DOCTYPE SET PUBLIC "-//OASIS//DTD DocBook V4.1//EN" [
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

<SET>
<SETINFO>
<TITLE>&spectitle &specversion</TITLE>
<COPYRIGHT>
<YEAR>2004</YEAR>
<YEAR>2005</YEAR>
<HOLDER>Free Standards Group</HOLDER>
</COPYRIGHT>
&legal;
</SETINFO>


<BOOK ID="generic-intro">
<BOOKINFO>
<TITLE>Specification Introduction</TITLE>
</BOOKINFO>
&lsb-generic-intro;
</BOOK>
<BOOK ID="generic-elf">
<BOOKINFO>
<TITLE>ELF Specification</TITLE>
</BOOKINFO>
&elf-contents;
</BOOK>
<BOOK ID="generic-lsb">
<BOOKINFO>
<TITLE>Linux Standard Base Specification</TITLE>
</BOOKINFO>
&lsb-contents;
&lsb-generic-appA;
</BOOK>
<BOOK ID="generic-packaging">
<BOOKINFO>
<TITLE>Linux Packaging Specification</TITLE>
</BOOKINFO>
&packaging-contents;
</BOOK>
<BOOK ID="licensing">
<BOOKINFO>
<TITLE>Free Documentation License</TITLE>
</BOOKINFO>
&fdl;
</BOOK>

</SET>
